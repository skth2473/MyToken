#MyToken Smart Contract
Overview
<br>
This is a simple Solidity smart contract named MyToken. It allows users to mint and burn tokens, track the total supply of tokens, and manage balances associated with different addresses.

Prerequisites
To interact with this contract, you'll need:

Solidity compiler version ^0.8.0
An Ethereum development environment such as Remix, Truffle, or Hardhat
A wallet address to perform minting and burning actions
Contract Details
Variables
name (string): The name of the token. Default value is "sarthak".
tokenAvv (string): An arbitrary token abbreviation. Default value is "nft2".
total_supply (uint): The total supply of tokens in circulation. Initially set to 0.
Mappings
balance (mapping): This mapping tracks the token balance of each address. The key is an address, and the value is the balance of tokens associated with that address.
Functions
mint
This function increases the total supply of tokens and credits the specified address with a given number of tokens.

solidity
Copy code
function mint(address _Address, uint _value) public {
    total_supply += _value;
    balance[_Address] += _value;
}
Parameters:
_Address (address): The address to which the tokens will be credited.
_value (uint): The number of tokens to be minted.
burn
This function decreases the total supply of tokens and debits the specified address by a given number of tokens. It requires that the address has sufficient balance to burn the specified amount of tokens.

solidity
Copy code
function burn(address _Address, uint _value) public {
    require(balance[_Address] >= _value, "Insufficient balance to burn");
    balance[_Address] -= _value;
    total_supply -= _value;
}
Parameters:
_Address (address): The address from which the tokens will be debited.
_value (uint): The number of tokens to be burned.
