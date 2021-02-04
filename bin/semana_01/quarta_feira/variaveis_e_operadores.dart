import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {
  String nome = 'Edson';
  var sobrenome = 'Martins';

  int idade = 23;
  double altura = 1.65;
  num peso = 70;

  bool eMentor = true;

  dynamic qualQuerCoisa = 'Uma string qualquer';

  print(qualQuerCoisa);

  qualQuerCoisa = 25;

  print(qualQuerCoisa);

  final valorConstante = 5 * pow(2, 2);

  const valorConstante2 = '5 * pow(2, 2)';

  // ========== CONCATENAÇÃO DE STRING ==========

  // print(nome + ' ' + sobrenome + ' ' + idade.toString());
  print('$nome $sobrenome, $idade');

  print('''
    $nome
    $sobrenome
    $idade
  ''');

  // ========== OPERADORES ==========
  var soma = 20 + 5;
  print('soma $soma');

  var multiplicacao = 20 * 5;
  print('multiplicação $multiplicacao');

  var divisao = 20 / 5;
  print('divisao $divisao');

  var divisaoParteInteira = 20 ~/ 5;
  print('divisaoParteInteira $divisaoParteInteira');

  var subtracao = 20 - 5;
  print('subtracao $subtracao');

  var preferencia = (20 - 5) * 5;
  print('preferencia $preferencia');

  // atividade
  // calcular o IMC

  // fazer o calculo e mostrar o resultado

  var imc = peso / (altura * altura);
  var imcV2 = peso / pow(altura, 2);

  print('Meu IMC: ${imcV2.toStringAsFixed(2)}');

  var raizQuadrada = sqrt(81);
  print('raiz quadrada : ${raizQuadrada.toInt()}');

  // print('Digite uma palavra');

  // var entrada = stdin.readLineSync();

  // stdout.write(entrada);

  // atividade
  // refatorar o IMC para pegar a altura e o peso pelo terminal

  print('');
  print('');
  print('');
  print('');

  print('Peso: ');

  var _peso = double?.parse(stdin?.readLineSync()) ?? 1;

  print('Altura: ');
  var _altura = double.tryParse(stdin.readLineSync()) ?? 1;

  var imcV3 = _peso / pow(_altura, 2);
  print('IMC V3 = $imcV3');
}
