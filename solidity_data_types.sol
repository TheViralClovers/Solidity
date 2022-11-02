// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Storage {
    //different data types demonstration
    bool hasFavouriteNumber = false; //boolean data types
    uint256 favouriteNumber = 5; //unsigned integer of size 256 bits (minimum is 8 bits)
    string favouriteNumberInText = "Five";
    int256 negNumber = 89; //integers that can hold negative values
    //bit size isnt necessary to be specifeid after the data type, but explicit declaration is good practice
    address myaddress = 0xA9df7Cd5ca3Fe8c0890ba9d00B198d87F04014C7; //stores addresses 
    bytes32 favBytes = "Hello"; //string is a type of bytes32 object //more info on this later
}
