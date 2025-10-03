#include <iostream>
#include <string>
using namespace std;

class Pessoa {
protected:
    string nome;
public:
    Pessoa(const string& n="") : nome(n) {}
    virtual ~Pessoa() = default;
    virtual void apresentar() const {
        cout << "Olá, meu nome é " << nome << " e eu sou uma pessoa.\n";
    }
};

class Professor : public Pessoa {
private:
    string disciplina;
public:
    Professor(const string& n, const string& d) : Pessoa(n), disciplina(d) {}
    void apresentar() const override {
        cout << "Olá, meu nome é " << nome << " e eu sou um professor de " << disciplina << ".\n";
    }
};

class Aluno : public Pessoa {
private:
    string curso;
    string matricula;
public:
    Aluno(const string& n, const string& c, const string& m) : Pessoa(n), curso(c), matricula(m) {}
    void apresentar() const override {
        cout << "Olá, meu nome é " << nome << " e eu sou um aluno de " << curso << ".\n";
    }
};

int main() {
    Pessoa* p1 = new Professor("Dra. Silva", "Programação");
    Pessoa* p2 = new Aluno("Mateus", "Engenharia", "20251234");

    p1->apresentar(); // polimorfismo
    p2->apresentar();

    delete p1;
    delete p2;
    return 0;
}
