pragma solidity ^0.8.0;

contract Anac {
    // Variável que armazena a idade do passageiro, inicia com 18.
    uint256 private idade = 18;

    // Armazena o endereço do dono do contrato
    address private owner;

    // O construtor atribui ao owner o endereço de quem fez o deploy do contrato
    constructor() {
        owner = msg.sender;
    }

    // Função para alterar a idade, somente o dono do contrato pode chamar
    function setIdade(uint256 _novaIdade) public {
        require(msg.sender == owner, "Apenas o dono do contrato pode alterar a idade");
        idade = _novaIdade;
    }

    // Retorna o valor atual da variavel
    function getIdade() public view returns (uint256) {
        return idade;
    }
}