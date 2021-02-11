import 'dart:io';

/*
Seguindo a lista com os 6 primeiros números primos: 2, 3, 5, 7, 11 e 13,
 nos podemos ver que o número primo 13 é o 6º

Desenvolva uma aplicação que encontre o número primo de posição 10001
*/
void main() {
  var posicao = 0;
  var posicaoAlvo = 10001;
  var numero = 2;

  while (true) {
    if (ePrimo(numero)) posicao++;
    if (posicao == posicaoAlvo) break;
    numero++;
  }

  print(numero);
  print(posicao);
}

bool ePrimo(int numero) {
  // primo = tem que divisivel por 1 e por ele mesmo
  if (numero == 1) return false;
  if (numero == 2) return true;
  if (numero.isEven) return false;

  var metade = numero ~/ 2;
  for (var i = 3; i < metade; i++) {
    if (numero % i == 0) return false;
  }

  return true;
}
