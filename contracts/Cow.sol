pragma solidity >= 0.4.21 <0.6.0;
pragma experimental ABIEncoderV2;

contract Cow{

    address owner;
    
    struct  Vaquinha{ 
        address criador;
        uint meta;
        uint saldo;
        string descricao;
        bool destaque;
        bool ativo;
    }

    mapping(address => Vaquinha) vaquinhasPorEndereco;
    Vaquinha[] vaquinhas;

    event CriarVaquinha(address criador, uint meta);
    event SacarVaquinha(address criador);

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function criarVaquinha(uint _meta, bool _destaque, string _descricao) public payable {
        vaquinhas.push(Vaquinha(msg.sender, _meta* 1 ether, 0, _descricao, _destaque, true));    
    }

    function pegarVaquinhas() public view returns (address[], uint[], uint[], string[], bool[], bool[])
    {
        address[] memory enderecos = new address[](vaquinhas.length);
        uint[]    memory metas = new uint[](vaquinhas.length);
        uint[]    memory saldos = new uint[](vaquinhas.length);
        string[]  memory descricoes = new string[](vaquinhas.length);
        bool[]    memory destaques = new bool[](vaquinhas.length);
        bool[]    memory ativos = new bool[](vaquinhas.length);
          
        for (uint i = 0; i < vaquinhas.length; i++) {
            
            enderecos[i] = vaquinhas[i].criador;
            metas[i] = vaquinhas[i].meta;
            saldos[i] = vaquinhas[i].saldo;
            descricoes[i] = vaquinhas[i].descricao;
            destaques[i] = vaquinhas[i].destaque;
            ativos[i] = vaquinhas[i].ativo;
        }

        return (enderecos, metas, saldos, descricoes, destaques, ativos);
    }
    
    function atualizarSaldoVaquinha(uint index) public payable returns(bool)
    {
        require(msg.value > 0 ether);
        vaquinhas[index].saldo += msg.value;
    }

    
    function sacarVaquinha(uint index) public payable{
        require(msg.sender == vaquinhas[index].criador);
        
        if(vaquinhas[index].destaque){
            msg.sender.transfer(vaquinhas[index].saldo - vaquinhas[index].saldo / 10);
            vaquinhas[index].ativo = false;
        }else{
            msg.sender.transfer(vaquinhas[index].saldo);
            vaquinhas[index].ativo = false;
        }
        
    }

}