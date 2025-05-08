// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

library MathLib {

    function multiplicar (int256 num1, int256 num2) public pure returns (int256){
        return num1 * num2;
    }

    function dividir (int256 num1, int256 num2) public pure returns (int256){
        if (num2 == 0) {
            return 0;
        }
            return num1 / num2;
    }
}