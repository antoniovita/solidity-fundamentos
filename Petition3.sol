// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Petition3 {
    string[3] names;
    mapping( string => string ) public status;
    uint256 public namesCount;
    string[] dynamicNames;

    constructor () {
        namesCount = 0;
    }

    function registerName (string memory _name) public {
        if (namesCount < 3){
            status[_name] = "undefined";
            names[namesCount] = _name;
            namesCount++;
        } else {
            dynamicNames.push(_name);
            status[_name] = "undefined";
            namesCount++;
        }
    }

    function getNames(uint256 _id) public view returns(string memory)  {
        if (_id < 3) {
            return names[_id];
        } else {
            return dynamicNames[_id-3];
        }
    }


    function getStatus() public view returns (string memory) {
        if (names.length >= 3 ){
            return "Completo.";
        }
        else {
            return "Incompleto";
        }
    } 


    function changeStatus(string memory _name, string memory _status) public {
            status[_name] = _status;
        
    }
}