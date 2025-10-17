class ArmaCorpoACorpo:
    def __init__(self, nome):
        self.nome = nome

class PhantomThieves:
    def __init__(self, nome, arma):
        self.nome = nome
        self.arma = arma

    def __str__(self):
        return f"{self.nome} usa {self.arma.nome}"

class Joker:
    def __init__(self, membros):
        self.arma = ArmaCorpoACorpo("Faca")
        self.membros = membros

    def mostrar_equipe(self):
        print(f"Joker usa {self.arma.nome}")
        for m in self.membros:
            print(m)

m1 = PhantomThieves("Ryuji", ArmaCorpoACorpo("Taco de ferro"))
m2 = PhantomThieves("Ann", ArmaCorpoACorpo("Chicote"))
joker = Joker([m1, m2])
joker.mostrar_equipe()
