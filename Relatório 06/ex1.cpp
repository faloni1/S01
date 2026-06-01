#include <iostream>
#include <string>

using namespace std;

class Robo {
public:
    string modelo;
    int versao;
    float potenciaLaser;
    int integridade;

    void disparar(Robo &alvo) {
        cout << "Disparando contra " << alvo.modelo << "!" << endl;
        alvo.integridade -= (int)potenciaLaser;
    }

    void exibirStatus() {
        cout << "Modelo: " << modelo << " | Versao: " << versao 
             << " | Laser: " << potenciaLaser << " | Integridade: " << integridade << endl;
    }
};

int main() {
    Robo r1;
    r1.modelo = "Alpha-1";
    r1.versao = 1;
    r1.potenciaLaser = 15.5f;
    r1.integridade = 100;

    Robo r2;
    r2.modelo = "Beta-2";
    r2.versao = 3;
    r2.potenciaLaser = 10.0f;
    r2.integridade = 80;

    r1.disparar(r2);

    r1.exibirStatus();
    r2.exibirStatus();

    return 0;
}
