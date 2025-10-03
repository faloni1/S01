#include <iostream>
#include <string>
using namespace std;

class Personagem {
public:
    string nome;
    int nivel;
    int dano;
    int vida;

    Personagem(const string& n, int niv, int d, int v)
        : nome(n), nivel(niv), dano(d), vida(v) {}

    void atacar(Personagem &alvo) {
        cout << nome << " ataca " << alvo.nome << " causando " << dano << " pontos de dano.\n";
        alvo.vida -= dano;
        if (alvo.vida < 0) alvo.vida = 0;
    }

    void mostrar() const {
        cout << "Nome: " << nome
             << " | Nivel: " << nivel
             << " | Dano: " << dano
             << " | Vida: " << vida << '\n';
    }
};

int main() {
    Personagem p1("Arthos", 5, 12, 50);
    Personagem p2("Lyra", 4, 9, 40);

    cout << "Antes do combate:\n";
    p1.mostrar();
    p2.mostrar();

    // Escolhendo quem ataca quem:
    p1.atacar(p2); // Arthos ataca Lyra
    p2.atacar(p1); // Lyra contra-ataca

    cout << "\nDepois do combate:\n";
    p1.mostrar();
    p2.mostrar();

    return 0;
}
