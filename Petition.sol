// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Petition {
    string[] names;

    function registerName (string memory _name) public {
        names.push(_name);
    }

    function getNames() public view returns(string[] memory)  {
        return names;
    }


    function getStatus() public view returns (string memory) {
        if (names.length >= 3 ){
            return "Completo.";
        }
        else {
            return "Incompleto";
        }
    } 
}