// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

//Fazer um contrato com 2 variaveis publicas: nomeVendedor, fator do bonus (numero Inteiro)
contract Aluguel {

    string public locatario;
    string public locador;
    uint256[36] public valoraluguel;

    constructor(string memory nomelocatario, string memory nomelocador, uint256 valorlocacao) {
        locatario = nomelocatario;
        locador = nomelocador;
        for (uint i = 0 ; i<36; i++){
            valoraluguel[i]=valorlocacao;
        }
        
    }
    
    //função que ao passar o valor da venda, multiplico o fator de bônus e retorna o valor.
    function valormes(uint mes) public view returns (uint256) {
        return valoraluguel[mes -1];
        
    }

    function contratantes() public view returns (string memory, string memory){
        return (locatario, locador);
    }

    function alteranomes(uint option, string memory name) public returns (bool){
        if(option ==1){
            locatario = name;
        }else if(option == 2){
            locador = name;
        }else {
            return false;
        }
        return true;
    }
    function alteraMesesRestantes(uint startMes,uint256 acrecimo) public returns (bool){
        for(uint i = startMes ; i < valoraluguel.length; i ++){
            valoraluguel[i] = valoraluguel[i]+acrecimo;
        }
        return true;
    }
    


}

//0xfCD32E0C3cEe9d2Ee0d00f66E639402E39c0a3d0
