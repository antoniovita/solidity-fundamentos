// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Pessoa {
    enum status {
        Aprovado,
        Reprovado,
        Indefinido
    }

    struct people {
        string name;
        uint256 age;
        bool brazillian;
        status gradeStatus;
    }

    people public jeremias;

    constructor () {
        jeremias.name = "Jeremias";
        jeremias.age = 10;
        jeremias.brazillian = true;
        jeremias.gradeStatus = status.Aprovado;
    }


    function setName (string memory _name) public {
        jeremias.name = _name;
    }


    function setAge (uint256 _age) public {
        jeremias.age = _age;
    }


    function setBrazillian (bool _value) public {
        jeremias.brazillian = _value;
    }

    function updateGradeStatus (uint256 _grade) public {
        if (_grade >= 7 ){
            jeremias.gradeStatus = status.Aprovado;
        }   
        
        else {
                jeremias.gradeStatus = status.Reprovado;
        }
    }
}