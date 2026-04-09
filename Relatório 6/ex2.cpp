#include <iostream>
#include <string>

using namespace std;

class Pessoa {
private:
    string nome;
    int idade;

public:
    Pessoa(string n, int i) : nome(n), idade(i) {}

    string getNome() { return nome; }
    int getIdade() { return idade; }
};

class Protagonista : public Pessoa {
private:
    int nivel;

public:
    Protagonista(string n, int i, int l) : Pessoa(n, i), nivel(l) {}

    int getNivel() { return nivel; }
};

class Personagem : public Pessoa {
private:
    int rank;

public:
    Personagem(string n, int i, int r) : Pessoa(n, i), rank(r) {}

    int getRank() { return rank; }
};

int main() {
    Protagonista hero("Ren Amamiya", 17, 99);
    Personagem ally("Ryuji Sakamoto", 17, 10);

    cout << "Protagonista: " << hero.getNome() << " | Nivel: " << hero.getNivel() << endl;
    cout << "Personagem: " << ally.getNome() << " | Rank: " << ally.getRank() << endl;

    return 0;
}
