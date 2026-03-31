#include <iostream>
using namespace std;

int main() {
    float saldo;
    int opcao = 0;

    cout << "Informe o seu saldo inicial: ";
    cin >> saldo;

    while (opcao != 4) {
        cout << "\nMenu:\n1. Ver Saldo\n2. Depositar\n3. Sacar\n4. Sair\nEscolha: ";
        cin >> opcao;

        if (opcao == 1) {
            cout << "Saldo atual: R$ " << saldo << endl;
        } else if (opcao == 2) {
            float deposito;
            cout << "Valor do deposito: ";
            cin >> deposito;
            saldo += deposito;
        } else if (opcao == 3) {
            float saque;
            cout << "Valor do saque: ";
            cin >> saque;
            if (saque > saldo) {
                cout << "Saldo Insuficiente" << endl;
            } else {
                saldo -= saque;
            }
        }
    }

    return 0;
}
