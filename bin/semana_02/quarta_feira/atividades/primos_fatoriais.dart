/*
Os primos fatoriais do número 13195 são 5, 7, 13 e 29.
Logo, o maior primo fatorial é 29.

Encontre o maior primo fatorial do número 600851475143.

Um primo fatorial é aquele que divide corretamente o número alvo/restante até chegar ao 1

Exemplo
13195 | 5
2639 | 7
377 | 13
29 | 29
1

Vocês devem guardar todos os primos fatoriais em uma lista e no final
deve ser feito a prova real, para ver se a soma da multiplicação dos primos fatoriais é igual ao número solicitado.

Mais o que é a soma da multiplicação dos primos fatoriais? Vamos lá...
Como vimos, os primos fatoriais do número 13195 são 5, 7, 13 e 29.
 A soma da multiplicação desses números deve dar o número 13195
5 * 7 * 13 * 29 = 13195

No final, deve imprimir no console o maior primo fatorial,
a lista dos números fatoriais e a soma da multiplicação dos primos fatoriais encontrados

*/

import 'dart:math';

void main() {
  var fatoriais = <int>[];
  var alvo = 600851475143;
  var i = 2;

  while (alvo > 1) {
    if (ePrimo(i) && (alvo % i == 0)) {
      alvo ~/= i;
      fatoriais.add(i);
      i = 2;
    }
    i++;
  }

  print(fatoriais.last);
  print(fatoriais);
  print(fatoriais.reduce((soma, fatorial) => soma * fatorial));
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
