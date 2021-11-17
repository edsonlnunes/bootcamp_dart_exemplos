import 'dart:math';

void main() {
  var posicao = 0;
  var ciclo = 0;
  var numero_primo = 0;

  while (posicao < 10001) {
    ciclo++;
    if (ePrimo(ciclo)) {
      numero_primo = ciclo;
      posicao++;
    }
  }

  print('O número primo de posição 10001 é: $numero_primo');
}

bool ePrimo(int numero) {
  if (numero < 2) {
    return false;
  }
  for (var i = 2; i <= sqrt(numero); i++) {
    if (numero % i == 0) {
      return false;
    }
  }
  return true;
}
