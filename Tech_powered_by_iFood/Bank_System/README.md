# Sistema Bancário Simples em Python

Este é um sistema bancário simples implementado em Python. Ele permite a criação de contas bancárias, depósitos, saques e consulta de saldo.

## Funcionalidades

- Criação de contas bancárias com saldo inicial.
- Depósito de dinheiro em uma conta.
- Saque de dinheiro de uma conta.
- Consulta de saldo de uma conta.

## Requisitos

- Python

## Como usar

1. Clone este repositório ou faça o download dos arquivos.
2. Certifique-se de ter o Python 3.x instalado em seu sistema.
3. Abra o arquivo `sistema_bancario.py` em um editor de texto ou IDE Python.
4. No arquivo `sistema_bancario.py`, você encontrará um exemplo de uso do sistema bancário. Sinta-se à vontade para modificar o exemplo ou adicionar suas próprias operações.
5. Execute o arquivo `sistema_bancario.py`.
6. Acompanhe as mensagens de saída para verificar o resultado das operações.

## Exemplo de Uso

```python
conta = ContaBancaria("João", 1000)
conta.consultar_saldo()  # Saldo atual: R$1000

conta.depositar(500)  # Depósito de R$500 realizado. Saldo atual: R$1500
conta.sacar(200)  # Saque de R$200 realizado. Saldo atual: R$1300

conta.consultar_saldo()  # Saldo atual: R$1300
```

## Contribuindo

Contribuições são bem-vindas! Se você tiver sugestões, melhorias ou correções, sinta-se à vontade para abrir uma issue ou enviar um pull request.

## Notas

Este sistema bancário é apenas um exemplo básico e simplificado, sem considerar vários aspectos importantes de um sistema bancário real, como autenticação, segurança, persistência de dados, entre outros. Este projeto destina-se apenas a fins educacionais e de demonstração.

## ✒️ Creator

* **Developer** - [Jhonatan Silverio de Oliveira](https://github.com/Jh0wjso)
