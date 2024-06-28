# ETH-AVAX-Module-3
# Overview
This repository contains the files for my project on Module 3 of the ETH + AVAX PROOF: Intermediate EVM Course. It contains a Solidity contract named ERC20Token.sol. This contract allows the contract owner to mint any number of tokens to a specified address. It also enables any user to transfer tokens to another account as well as burn tokens from their balance.

ERC20Token.sol provides three functions:
- ownerMintToken() = allows the owner to mint tokens to an address. This function is exclusive to the contract owner.
- userTransferToken() = allows the user to transfer tokens to an address
- userBurnToken() = allows user to burn tokens from their own address

# Pre-requisites
To be able to run the contract properly, setting up the following is recommended:
- Remix IDE or any Solidity Compiler that could run version 0.8.0 or higher

# Usage
- Open Remix IDE or your chosen Solidity Compiler.
- Copy and paste the code provided in ERC20Token.sol.
- Compile the contract using Solidity Compiler.
- Deploy the contract using Deploy & Run Transactions.
- Interact with the contract. Input your desired values for the address and amount parameters.
- Run the contract. The console should display that the transaction is successful.
