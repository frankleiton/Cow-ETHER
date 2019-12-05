var abi = [
	{
		"constant": false,
		"inputs": [
			{
				"name": "index",
				"type": "uint256"
			}
		],
		"name": "atualizarSaldoVaquinha",
		"outputs": [
			{
				"name": "",
				"type": "bool"
			}
		],
		"payable": true,
		"stateMutability": "payable",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "index",
				"type": "uint256"
			}
		],
		"name": "sacarVaquinha",
		"outputs": [],
		"payable": true,
		"stateMutability": "payable",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "pegarVaquinhas",
		"outputs": [
			{
				"name": "",
				"type": "address[]"
			},
			{
				"name": "",
				"type": "uint256[]"
			},
			{
				"name": "",
				"type": "uint256[]"
			},
			{
				"name": "",
				"type": "string[]"
			},
			{
				"name": "",
				"type": "bool[]"
			},
			{
				"name": "",
				"type": "bool[]"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	},
	{
		"constant": false,
		"inputs": [
			{
				"name": "_meta",
				"type": "uint256"
			},
			{
				"name": "_destaque",
				"type": "bool"
			},
			{
				"name": "_descricao",
				"type": "string"
			}
		],
		"name": "criarVaquinha",
		"outputs": [],
		"payable": true,
		"stateMutability": "payable",
		"type": "function"
	},
	{
		"inputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": false,
				"name": "criador",
				"type": "address"
			},
			{
				"indexed": false,
				"name": "meta",
				"type": "uint256"
			}
		],
		"name": "CriarVaquinha",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": false,
				"name": "criador",
				"type": "address"
			}
		],
		"name": "SacarVaquinha",
		"type": "event"
	}
]