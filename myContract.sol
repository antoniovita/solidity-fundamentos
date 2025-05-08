// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "contracts/contractToSum.sol";

contract myContract {
    ToSum ts;

    constructor () {
        ts = new ToSum();
    }

    function Somar (int256 v1, int256 v2) public view returns (int256) {
        return ts.addIntegers(v1 , v2);
    }

}
