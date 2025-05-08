// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ToSum {

    constructor() {}

    function addIntegers(int256 _num1, int256 _num2) public pure returns (int256) {
        return _num1 + _num2;
    }

    function subtractIntegers(int256 num1, int256 num2) public pure returns (int256) {
        return num1 - num2;
    }
}
