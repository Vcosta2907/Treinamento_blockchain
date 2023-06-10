// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

//Fazer um contrato com 2 variaveis publicas: nomeVendedor, fator do bonus (numero Inteiro)
contract CalculoBonus {

    string public vendedor;
    uint256 public fatorBonus;

    constructor(string memory nomeVendedor, uint256 valorFatorBonus) {
        vendedor = nomeVendedor;
        fatorBonus = valorFatorBonus;
    }

    //função que ao passar o valor da venda, multiplico o fator de bônus e retorna o valor.
    function calculaBonus(uint256 valorVenda) public view returns (uint256 bonusCalculado) {
        bonusCalculado = valorVenda * fatorBonus;
        bonusCalculado = bonusCalculado / 100;
        return bonusCalculado;
    }

}

//0xfCD32E0C3cEe9d2Ee0d00f66E639402E39c0a3d0
