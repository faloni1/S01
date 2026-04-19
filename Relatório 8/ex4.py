from abc import ABC, abstractmethod

class Cibernetico(ABC):
    @abstractmethod
    def realizar_hack(self):
        pass

class Implante:
    def __init__(self, custo, funcao):
        self.custo = custo
        self.funcao = funcao

class NetRunner(Cibernetico):
    def __init__(self, nome, custo_implante, funcao_implante):
        self.nome = nome
        self.implante = Implante(custo_implante, funcao_implante)

    def realizar_hack(self):
        print(f"{self.nome} realizou um hack utilizando a função: {self.implante.funcao}")

class Faccao:
    def __init__(self, membros_ciberneticos):
        self.membros = membros_ciberneticos

    def executar_ataque_cibernetico(self):
        for membro in self.membros:
            membro.realizar_hack()

netrunners = [
    NetRunner("V", 5000, "Quebra de Protocolo"),
    NetRunner("Lucy", 8000, "Curto-Circuito")
]

faccao = Faccao(netrunners)
faccao.executar_ataque_cibernetico()
