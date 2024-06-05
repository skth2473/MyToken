#MyToken Smart Contract
Overview
<br>
This is a simple Solidity smart contract named MyToken. It allows users to mint and burn tokens, track the total supply of tokens, and manage balances associated with different addresses.

Prerequisites
To interact with this contract, you'll need:
<br>
Solidity compiler version ^0.8.0
An Ethereum development environment such as Remix, Truffle, or Hardhat
A wallet address to perform minting and burning actions
<br>
mint
This function increases the total supply of tokens and credits the specified address with a given number of tokens.
<br>
burn
This function decreases the total supply of tokens and debits the specified address by a given number of tokens. It requires that the address has sufficient balance to burn the specified amount of tokens.

