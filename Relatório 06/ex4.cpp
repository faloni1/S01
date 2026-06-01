#include <iostream>
#include <string>
#include <vector>

using namespace std;

class MembroConselho {
protected:
    string nome;

public:
    MembroConselho(string n) : nome(n) {}

    virtual void saudar() {
        cout << "Um membro do conselho faz uma reverencia silenciosa." << endl;
    }

    virtual ~MembroConselho() {}
};

class Anao : public MembroConselho {
public:
    Anao(string n) : MembroConselho(n) {}

    void saudar() override {
        cout << "Pela forca da montanha, eu sou " << nome << " e honro nosso aco!" << endl;
    }
};

class Orc : public MembroConselho {
public:
    Orc(string n) : MembroConselho(n) {}

    void saudar() override {
        cout << "Pelo sangue e gloria, eu sou " << nome << " e trago a forca de minha tribo!" << endl;
    }
};

class Draconato : public MembroConselho {
public:
    Draconato(string n) : MembroConselho(n) {}

    void saudar() override {
        cout << "Pelo sopro dos ancestrais, eu sou " << nome << " e falo em nome dos dragoes!" << endl;
    }
};

int main() {
    vector<MembroConselho*> conselho;

    conselho.push_back(new Anao("Torin"));
    conselho.push_back(new Orc("Garrosh"));
    conselho.push_back(new Draconato("Varkas"));

    for (auto membro : conselho) {
        membro->saudar();
    }

    for (auto membro : conselho) {
        delete membro;
    }

    return 0;
}
