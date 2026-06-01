#include <iostream>
using namespace std;

int main() {
    int sala[5][5] = {0};
    int opcao = 0;

    while (opcao != 3) {
        cout << "\n1. Reservar Assento\n2. Ver Mapa\n3. Sair\nEscolha: ";
        cin >> opcao;

        if (opcao == 1) {
            int f, c;
            cout << "Fileira (0-4): ";
            cin >> f;
            cout << "Coluna (0-4): ";
            cin >> c;

            if (f >= 0 && f < 5 && c >= 0 && c < 5) {
                if (sala[f][c] == 0) {
                    sala[f][c] = 1;
                    cout << "Sucesso!" << endl;
                } else {
                    cout << "Erro: Assento ocupado!" << endl;
                }
            }
        } else if (opcao == 2) {
            for (int i = 0; i < 5; i++) {
                for (int j = 0; j < 5; j++) {
                    cout << "[" << sala[i][j] << "] ";
                }
                cout << endl;
            }
        }
    }

    int ocupados = 0;
    int vazios = 0;
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            if (sala[i][j] == 1) ocupados++;
            else vazios++;
        }
    }

    cout << "\nRelatorio Final:" << endl;
    cout << "Total ocupados: " << ocupados << endl;
    cout << "Total vazios: " << vazios << endl;

    return 0;
}
