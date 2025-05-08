// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract PrimeiroContrato {
    uint256 private number;
    string private name;

    event Alteracao(uint number, string name);
    mapping (uint => address) public mappingAddresses;

    function armazenar(uint _number, string memory _name) public {
        number = _number;
        name = _name;

        emit Alteracao(_number, _name);
    }

    function getNumber() public view returns (uint) {
        return number;
    }

    function getName() public view returns (string memory) {
        return name;
    }
}
