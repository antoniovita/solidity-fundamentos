// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract PersonStorageData {
    string public name;
    uint internal age;
    string private nationality;

    constructor () {
        name = "Jeremias";
        age = 10;
        nationality = "Brazillian";
    }

    function setPersonAgePlusOne( uint _age) public {
        age = _age;
    }

    function setPersonName( string memory _name ) public{
        name = _name;
    }

    function getPersonAge() public view returns (uint){
        return age;
    }


    function addValues(uint _number, uint _number2) internal pure returns (uint) {
        return _number + _number2;
    }

    function incrementAge() external  {
        age = addValues(age, 1);
    }
}
