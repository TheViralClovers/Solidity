// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Storage {
    uint256 public favoriteNumber; //unsigned integer of size 256 bits (minimum is 8 bits)
    //public => this function/variable can be viewed by anyone seeing the contract
    function store(uint256 _favoriteNumber) public{            //This function takes gas fees to perform, since it changes the state of the blockchain
        favoriteNumber = _favoriteNumber;
    }

    //"view" keyword indicates that, the function wont change the blockchain state, it will just be used to view the state
    //view and pure dont cost gas when called outside the blockchain
    function retrieve() public view returns(uint256){         //This function does not cost gas (unless it is called from within another blockchain state changing function)
        return favoriteNumber;
    } //returns keyword is used to indicate the datatype of the value we are returning from the function
    //return keyword is used to return the value

    function public add() pure returns(uint8){ //this fucntion also doesnt cost gas
        return(1+1)
    }
}
