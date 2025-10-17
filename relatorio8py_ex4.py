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
    def __init__(self, nome, custo, funcao):
        self.nome = nome
        self.implante = Implante(custo, funcao)

    def realizar_hack(self):
        print(f"{self.nome} realiza um hack usando {self.implante.funcao} (custo: {self.implante.custo})")

class Faccao:
    def __init__(self, membros):
        self.membros = membros

    def hack_coletivo(self):
        for m in self.membros:
            m.realizar_hack()

n1 = NetRunner("V", 5000, "Interface neural")
n2 = NetRunner("Silverhand", 8000, "Implante de ciberbraço")
f = Faccao([n1, n2])
f.hack_coletivo()
