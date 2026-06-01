class Heroi:
    def __init__(self, nome, funcao):
        self.nome = nome
        self.funcao = funcao

    def usar_ultimate(self):
        raise NotImplementedError("As classes filhas devem implementar este método")

class Tanque(Heroi):
    def usar_ultimate(self):
        print(f"{self.nome} ativa um escudo massivo para proteger a equipe!")

class Dano(Heroi):
    def usar_ultimate(self):
        print(f"{self.nome} desfere um ataque letal em área!")

herois = [
    Tanque("Reinhardt", "Tanque"),
    Dano("Genji", "Dano")
]

for heroi in herois:
    heroi.usar_ultimate()
