class ContaBancaria:
    def __init__(self, titular, saldo_inicial=0):
        self.titular = titular
        self.saldo = saldo_inicial

    def depositar(self, valor):
        self.saldo += valor
        print(f"Depósito de R${valor} realizado. Saldo atual: R${self.saldo}")

    def sacar(self, valor):
        if valor <= self.saldo:
            self.saldo -= valor
            print(f"Saque de R${valor} realizado. Saldo atual: R${self.saldo}")
        else:
            print("Saldo insuficiente.")

    def consultar_saldo(self):
        print(f"Saldo atual: R${self.saldo}")


conta = ContaBancaria("John", 1000)
conta.consultar_saldo() 

conta.depositar(500) 
conta.sacar(200) 

conta.consultar_saldo() 
