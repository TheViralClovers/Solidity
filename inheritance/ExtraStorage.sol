// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage { //inheritance
    function store(uint256 _favoriteNumber) public override { //overriding virtual function
        favoriteNumber = _favoriteNumber + 5;
    }
}
