// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Storage {
    uint256 public favoriteNumber; //unsigned integer of size 256 bits (minimum is 8 bits)

    struct People{ //creating a structure
        uint256 favoriteNumber;
        string name;
    }

    mapping(string => uint256) public nameTofavoriteNumber; //creates a dictionary

    People[] public people; //creating an array of structures of type "People" and assigning it to  "people" 
    //[] indicates dynamic size of array
    //public => this function/variable can be viewed by anyone seeing the contract
    function store(uint256 _favoriteNumber) public {  //This function takes gas fees to perform, since it changes the state of the blockchain
        favoriteNumber = _favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public { //we use memory to indicate that we will be storing the value of the string to memory (this is done explicitly for integers, so no need to use it there)
        nameTofavoriteNumber[_name] = _favoriteNumber;
    } //assigns favoriteNumber to name 
 
}
