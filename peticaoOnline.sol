// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract peticaoOnline {
    string[] public assinaturas;
    string public status;

    constructor () {
        status = "Incompleto.";
    }

    function registraAssinatura (string memory _assinatura) public {
        assinaturas.push(_assinatura);

        if (assinaturas.length >= 3 ){
         status = "Completo.";
            }
        else {
            status = status;
        }
    }

}