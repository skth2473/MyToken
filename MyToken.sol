// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract MyToken {

    // public variables here
    string public name= "sarthak";
    string public tokenAvv="nft2";
    uint public total_supply= 0;
    
    // mapping variable here
    mapping(address=>uint) public balance;
    
    // mint function
    function mint(address _Address, uint _value ) public{
        total_supply += _value;
        balance[_Address] += _value; 
    }
    // creating abnk accounts and adding money
    // burn function
    function burn(address _Address , uint _value ) public {
        require(balance[_Address] >= _value, "Insufficient balance to burn");
        balance[_Address] -= _value; 
        total_supply -= _value;
    }
    /// tsarthak544@gmail.com
}
