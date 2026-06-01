class ArmaCorpoACorpo:
    def __init__(self, nome):
        self.nome = nome

class PhantomThieves:
    def __init__(self, nome, arma):
        self.nome = nome
        self.arma = arma

class Joker:
    def __init__(self, equipe):
        self.arma = ArmaCorpoACorpo("Faca")
        self.equipe = equipe

    def mostrar_equipe(self):
        print("Membros dos Phantom Thieves:")
        for membro in self.equipe:
            print(f"- {membro.nome} empunhando {membro.arma}")

membros = [
    PhantomThieves("Ryuji", "Cano de Ferro"),
    PhantomThieves("Ann", "Chicote")
]

joker = Joker(membros)
joker.mostrar_equipe()
