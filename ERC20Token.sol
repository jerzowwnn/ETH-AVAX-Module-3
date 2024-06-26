// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public contractOwner;

    constructor() ERC20("MyCustomToken", "CustomToken") {
        contractOwner = msg.sender;
    }

    modifier exclusiveOwner() {
        require(msg.sender == contractOwner, "Caller is not the owner");
        _;
    }

    // Only owner can mint tokens to their own address
    function ownerMintToken(address recipient, uint256 qtyToken) public exclusiveOwner {
        _mint(recipient, qtyToken);
    }

    // Transfer (any user)
    function userTransferToken(address recipient, uint256 qtyToken) public returns (bool) {
        return transfer(recipient, qtyToken);
    }

    // Burn (any user)
    function userBurnToken(uint256 qtyToken) public {
        _burn(msg.sender, qtyToken);
    }
}