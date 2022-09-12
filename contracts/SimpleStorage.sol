// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 private favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    mapping(string => uint256)public nameToFaveNum;

    People[] public people;

    function store (uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view  returns(uint256){
        return favoriteNumber;
    }

    function addPerson (string memory _name, uint256 _favNumber) public {
        people.push(People(_favNumber,_name));
        nameToFaveNum[_name] = _favNumber;
    }
}
