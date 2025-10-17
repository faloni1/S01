from abc import ABC, abstractmethod

class Heroi(ABC):
    def __init__(self, nome, funcao):
        self.nome = nome
        self.funcao = funcao

    @abstractmethod
    def usar_ultimate(self):
        pass

class Tanque(Heroi):
    def usar_ultimate(self):
        print(f"{self.nome} usa um escudo impenetrável!")

class Dano(Heroi):
    def usar_ultimate(self):
        print(f"{self.nome} dispara uma rajada devastadora!")

herois = [Tanque("Reinhardt", "Tanque"), Dano("Soldado 76", "Dano")]
for h in herois:
    h.usar_ultimate()
