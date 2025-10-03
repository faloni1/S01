#include <iostream>
#include <string>
#include <vector>
using namespace std;

class SerVivo {
protected:
    string nome;
public:
    SerVivo(const string& n) : nome(n) {}
    virtual ~SerVivo() = default;
    virtual void apresentar() const {
        cout << "Sou um ser vivo chamado " << nome << ".\n";
    }
};

class Humano : public SerVivo {
public:
    Humano(const string& n) : SerVivo(n) {}
    void apresentar() const override {
        cout << "Olá, eu sou o humano " << nome << ", prazer!\n";
    }
};

class Elfo : public SerVivo {
public:
    Elfo(const string& n) : SerVivo(n) {}
    void apresentar() const override {
        cout << "Saudações, sou o elfo " << nome << " das florestas.\n";
    }
};

class Fada : public SerVivo {
public:
    Fada(const string& n) : SerVivo(n) {}
    void apresentar() const override {
        cout << "Pi-pi! Sou a fada " << nome << " e trago magia!\n";
    }
};

int main() {
    vector<SerVivo*> lista;
    lista.push_back(new Humano("Carlos"));
    lista.push_back(new Elfo("Elandril"));
    lista.push_back(new Fada("Lúmen"));

    for (const auto* s : lista) {
        s->apresentar();
    }

    // limpar memória
    for (auto* s : lista) delete s;
    return 0;
}
