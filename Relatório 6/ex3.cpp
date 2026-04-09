#include <iostream>
#include <string>

using namespace std;

class MembroInatel {
protected:
    string nomeCompleto;

public:
    MembroInatel(string nome) : nomeCompleto(nome) {}

    virtual void identificar() {
        cout << "Sou um membro da comunidade Inatel: " << nomeCompleto << "." << endl;
    }

    virtual ~MembroInatel() {}
};

class Coordenador : public MembroInatel {
private:
    string departamento;

public:
    Coordenador(string nome, string dep) : MembroInatel(nome), departamento(dep) {}

    void identificar() override {
        cout << "Meu nome e " << nomeCompleto << ", sou o coordenador do departamento de " << departamento << " no Inatel." << endl;
    }
};

class Pesquisador : public MembroInatel {
private:
    string laboratorio;

public:
    Pesquisador(string nome, string lab) : MembroInatel(nome), laboratorio(lab) {}

    void identificar() override {
        cout << "Meu nome e " << nomeCompleto << ", e realizo pesquisas no laboratorio " << laboratorio << " do Inatel." << endl;
    }
};

int main() {
    MembroInatel* m1 = new Coordenador("Marcos Oliveira", "Telecomunicacoes");
    MembroInatel* m2 = new Pesquisador("Julia Costa", "Ciberserguranca");

    m1->identificar();
    m2->identificar();

    delete m1;
    delete m2;

    return 0;
}
