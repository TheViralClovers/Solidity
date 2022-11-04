// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.7;

import "./SimpleStorage.sol"; //importing the entire contract of SimpleStorage.sol

contract StorageFactory { 
    
    SimpleStorage[] public simpleStorageArray; //creating an empty dynamicarray of objects of type SimpleStorage and calling it simpleStorageArray
    
    function createSimpleStorageContract() public { //used to create new SimpleStorage contracts
        SimpleStorage simpleStorage = new SimpleStorage(); //creation function
        simpleStorageArray.push(simpleStorage); //adding the contract to the array of contracts
    }
    
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public { //used to store a number(_simpleStorageNumber) to a specific contract(using index of the contract)
        // Address 
        // ABI 
        // SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber); 
    }
    
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) { //retrieve a specific number from a specific contract
        // return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}
