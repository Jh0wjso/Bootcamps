class ContaBancaria:
    def __init__(self, titular, saldo_inicial=0):
        self.titular = titular
        self.saldo = saldo_inicial
        self.historico_transacoes = []

    def depositar(self, valor):
        self.saldo += valor
        self.historico_transacoes.append(f"Depósito de R${valor}")
        print(f"Depósito de R${valor} realizado. Saldo atual: R${self.saldo}")

    def sacar(self, valor):
        if valor <= self.saldo:
            self.saldo -= valor
            self.historico_transacoes.append(f"Saque de R${valor}")
            print(f"Saque de R${valor} realizado. Saldo atual: R${self.saldo}")
        else:
            print("Saldo insuficiente.")

    def transferir(self, conta_destino, valor):
        if valor <= self.saldo:
            self.saldo -= valor
            conta_destino.saldo += valor
            self.historico_transacoes.append(f"Transferência de R${valor} para {conta_destino.titular}")
            conta_destino.historico_transacoes.append(f"Transferência de R${valor} recebida de {self.titular}")
            print(f"Transferência de R${valor} realizada para {conta_destino.titular}. Saldo atual: R${self.saldo}")
        else:
            print("Saldo insuficiente.")

    def consultar_saldo(self):
        print(f"Saldo atual: R${self.saldo}")

    def consultar_historico(self):
        print("Histórico de transações:")
        for transacao in self.historico_transacoes:
            print(transacao)


class ListaCompras:
    def __init__(self):
        self.itens = []

    def adicionar_item(self, item):
        self.itens.append(item)
        print(f"Item '{item}' adicionado à lista de compras.")

    def remover_item(self, item):
        if item in self.itens:
            self.itens.remove(item)
            print(f"Item '{item}' removido da lista de compras.")
        else:
            print(f"Item '{item}' não encontrado na lista de compras.")

    def mostrar_lista(self):
        if self.itens:
            print("Lista de compras:")
            for item in self.itens:
                print(f"- {item}")
        else:
            print("A lista de compras está vazia.")

conta1 = ContaBancaria("João", 1000)
conta2 = ContaBancaria("Maria", 500)

conta1.depositar(500)
conta1.transferir(conta2, 200)

conta1.consultar_saldo()
conta2.consultar_saldo()

conta1.consultar_historico()

lista_compras = ListaCompras()
lista_compras.adicionar_item("Maçã")
lista_compras.adicionar_item("Pão")
lista_compras.adicionar_item("Leite")

lista_compras.mostrar_lista()

lista_compras.remover_item("Pão")
lista_compras.remover_item("Banana")

lista_compras.mostrar_lista()
                        
                        
