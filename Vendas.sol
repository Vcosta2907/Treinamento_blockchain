// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Vendedor {

    string public nomeVendedor;
    uint32 public valorDeBonus;
    uint32 public valorVenda;

    uint32 constant fatorBonus = 500;

    function valorDeBonificacao() public returns(uint256) {

        valorDeBonus = valorVenda*fatorBonus;

        return valorDeBonus;
    } 

}


//0x6d5D2A6BD5d7939DD9075734C07Fa9ec6a8968aE
