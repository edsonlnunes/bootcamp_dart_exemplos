import 'dart:math';

void main() {
  // arrow function = é uma função que executa uma unica linha de código;
  print('resultado: ${subtrair(5, 3)}');

  subtrairSemRetorno(6, 2);

  // criar uma arrow function para calcular o IMC
  print('IMC: ${calcularIMC(75, 1.65).toStringAsFixed(2)}');
}

int subtrair(int num1, int num2) => num1 - num2;
void subtrairSemRetorno(int num1, int num2) => print(num1 - num2);

double calcularIMC(double peso, double altura) => peso / pow(altura, 2);
