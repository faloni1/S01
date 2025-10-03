#include <iostream>
#include <string>
using namespace std;

class Pessoa {
private:
    string nome;
    int idade;
public:
    void setNome(const string& n) { nome = n; }
    string getNome() const { return nome; }

    void setIdade(int i) { idade = i; }
    int getIdade() const { return idade; }
};

class Protagonista : public Pessoa {
private:
    int nivel;
public:
    void setNivel(int n) { nivel = n; }
    int getNivel() const { return nivel; }
};

class Personagem : public Pessoa {
private:
    int rank; // 0..10
public:
    void setRank(int r) { rank = (r < 0 ? 0 : (r > 10 ? 10 : r)); }
    int getRank() const { return rank; }
};

int main() {
    Protagonista p;
    p.setNome("Renato");
    p.setIdade(18);
    p.setNivel(7);

    Personagem npc;
    npc.setNome("Ayla");
    npc.setIdade(21);
    npc.setRank(9);

    cout << "Protagonista:\n";
    cout << "Nome: " << p.getNome() << ", Idade: " << p.getIdade() << ", Nivel: " << p.getNivel() << '\n';

    cout << "Personagem (NPC):\n";
    cout << "Nome: " << npc.getNome() << ", Idade: " << npc.getIdade() << ", Rank: " << npc.getRank() << '\n';

    // Nota: atributos privados acessados via métodos (get/set), não diretamente.
    return 0;
}
