// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Petition2 {
    string[3] names;
    mapping( uint256 => string ) public status;
    uint256 public namesCount;

    constructor () {
        namesCount = 0;
    }

    function registerName (string memory _name) public {
        if (namesCount < 3){
            status[namesCount] = "undefined";
            names[namesCount] = _name;
            namesCount++;
        }
    }

    function getNames(uint256 _id) public view returns(string memory)  {
        return names[_id];
    }


    function getStatus() public view returns (string memory) {
        if (names.length >= 3 ){
            return "Completo.";
        }
        else {
            return "Incompleto";
        }
    } 


    function changeStatus(uint256 _id, string memory _status) public {
        if (_id < namesCount) {
            status[_id] = _status;
        }
    }
}