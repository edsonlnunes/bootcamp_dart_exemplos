import 'dart:io';

// soma dos números
/*
Receber um número do usuário pelo terminal e fazer um programa que
some os números pares e que não some os números múltiplos de 5.
O programa só deve aceitar de entrada números pares,
números com mais de 2 dígitos e números com menos de 5 dígitos
> 100 - 9999 <
*/
void main() {
  print(
      'Entre com um número maior que 2 digítos e menor do que 5 e que seja par');

  var entrada = int.tryParse(stdin.readLineSync()) ?? 0;

  if (validaEntrada(entrada)) {
    print('Entrada inválida');
    return;
  }

  var soma = 0;
  for (var i = 1; i <= entrada; i++) {
    if ((i.isEven) && (i % 5 != 0)) {
      soma += i;
    }
  }

  print(soma);
}

bool validaEntrada(int numero) =>
    numero.isOdd ||
    numero.toString().length < 2 ||
    numero.toString().length >= 5;
