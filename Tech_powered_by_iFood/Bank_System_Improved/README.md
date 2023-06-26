# Sistema Bancário Simples em Python e Lista de Compras

Este é um sistema bancário simples implementado em Python, que permite a criação de contas bancárias, depósitos, saques, transferências entre contas, consulta de saldo e um recurso adicional de lista de compras.

## Funcionalidades

### Conta Bancária

- Criação de contas bancárias com saldo inicial.
- Depósito de dinheiro em uma conta.
- Saque de dinheiro de uma conta.
- Transferência de dinheiro entre contas.
- Consulta de saldo de uma conta.
- Histórico de transações.

### Lista de Compras

- Adição de itens à lista de compras.
- Remoção de itens da lista de compras.
- Exibição da lista de compras.

## Requisitos

- Python 3

## Como usar

1. Clone este repositório ou faça o download dos arquivos.
2. Certifique-se de ter o Python 3.x instalado em seu sistema.
3. Abra o arquivo `sistema_bancario.py` em um editor de texto ou IDE Python.
4. No arquivo `sistema_bancario.py`, você encontrará um exemplo de uso do sistema bancário e da lista de compras. Sinta-se à vontade para modificar o exemplo ou adicionar suas próprias operações.
5. Execute o arquivo `sistema_bancario.py`.
6. Acompanhe as mensagens de saída para verificar o resultado das operações.

## Exemplo de Uso

```python
conta1 = ContaBancaria("João", 1000)
conta2 = ContaBancaria("Maria", 500)

conta1.depositar(500)  # Depósito de R$500 realizado. Saldo atual: R$1500
conta1.transferir(conta2, 200)  # Transferência de R$200 realizada para Maria. Saldo atual: R$1300

conta1.consultar_saldo()  # Saldo atual: R$1300
conta2.consultar_saldo()  # Saldo atual: R$700

conta1.consultar_historico()  # Histórico de transações:
                              # Depósito de R$500
                              # Transferência de R$200 para Maria

lista_compras = ListaCompras()
lista_compras.adicionar_item("Maçã")
lista_compras.adicionar_item("Pão")
lista_compras.adicionar_item("Leite")

lista_compras.mostrar_lista()  # Lista de compras:
                               # - Maçã
                               # - Pão
                               # - Leite

lista_compras.remover_item("Pão")
lista_compras.remover_item("Banana")

lista_compras.mostrar_lista()  # Lista de compras:
                               # - Maçã
                               # - Leite
```

## Contribuindo

Contribuições são bem-vindas! Se você tiver sugestões, melhorias ou correções, sinta-se à vontade para abrir uma issue ou enviar um pull request.

## Notas

Este sistema bancário e lista de compras são apenas exemplos básicos e simplificados, sem considerar vários aspectos importantes de sistemas bancários e de listas de compras reais, como autenticação, segurança, persistência de dados, entre outros. Este projeto destina-se apenas a fins educacionais e de demonstração.

## ✒️ Criador

* **Desenvolvedor** -

 [Jhonatan Silverio de Oliveira](https://github.com/Jh0wjso)
