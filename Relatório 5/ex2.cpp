#include <iostream>
using namespace std;

float multiplicaArray(float arr[], int tamanho) {
    float produto = 1.0f;
    for (int i = 0; i < tamanho; i++) {
        produto *= arr[i];
    }
    return produto;
}

int main() {
    int n;
    cout << "Quantos valores deseja inserir? ";
    cin >> n;
    
    float* values = new float[n];
    for (int i = 0; i < n; i++) {
        cout << "Valor " << i + 1 << ": ";
        cin >> values[i];
    }
    
    cout << "Produto: " << multiplicaArray(values, n) << endl;
    
    delete[] values;
    return 0;
}
