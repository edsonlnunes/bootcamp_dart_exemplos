/*

Crie uma lista de Map de alunos (5 ou mais) que tenha as seguintes propriedades: nome, idade, nota e status.

Dado o seguinte gabarito de uma prova:

gabarito: ['A', 'C', A', 'C, 'B', 'C', 'A', 'B', 'B', 'A']

Percorra cada aluno, e faça cada aluno preencher uma lista de resposta de mesma quantidade que o gabarito. 
A resposta pode ser totalmente aleatória.
Para cada resposta correta, o aluno ganha 1 ponto.

Depois de lido as resposta de cada aluno e ter comparado com o gabarito,
atualize o status dos alunos para APROVADO caso a nota seja maior ou igual a 4 ou REPROVADO 
caso seja menor que 4

No final do programa mostre o seguinte resultado

Média das nota dos aluno
Aluno que tirou a maior nota
Aluno que tirou a menor nota
Uma lista com os alunos aprovados
Uma lista com os alunos reprovados

*/

import 'dart:math';

enum EStatus {
  APROVADO,
  REPROVADO,
  NAO_DEFINIDO,
}

void main() {
  List<Map<String, dynamic>> alunos = gerarAlunos();

  var gabarito = <String>['A', 'C', 'A', 'C', 'B', 'C', 'A', 'B', 'B', 'A'];

  alunos.forEach((aluno) {
    // pegar respostas do aluno
    var respostas = <String>[];
    for (var i = 0; i < gabarito.length; i++) {
      respostas.add(['A', 'B', 'C'][Random.secure().nextInt(3)]);
    }

    var nota = 0;
    for (var i = 0; i < gabarito.length; i++) {
      if (respostas[i] == gabarito[i]) {
        nota++;
      }
    }

    // aluno.update('nota', (_) => nota);
    // aluno.update(
    //     'status', (_) => nota >= 4 ? EStatus.APROVADO : EStatus.REPROVADO);

    aluno.addAll({
      'nota': nota,
      'status': nota >= 4 ? EStatus.APROVADO : EStatus.REPROVADO,
    });
  });

  var media =
      alunos.fold<int>(0, (total, aluno) => total + (aluno['nota'] as int)) /
          alunos.length;

  alunos.sort((aluno, aluno2) =>
      (aluno['nota'] as int).compareTo(aluno2['nota'] as int));

  print('Média: $media');
  print('Aluno com maior nota: ${alunos.last}');
  print('Aluno com menor nota: ${alunos.first}');

  print(
      'Alunos aprovados: ${alunos.where((aluno) => (aluno['status'] as EStatus) == EStatus.APROVADO)}');

  print(
      'Alunos reprovados: ${alunos.where((aluno) => (aluno['status'] as EStatus) == EStatus.REPROVADO)}');
}

List<Map<String, dynamic>> gerarAlunos() {
  return <Map<String, dynamic>>[
    {
      'nome': 'Edson',
      'idade': Random.secure().nextInt(50),
      'nota': 0,
      'status': EStatus.NAO_DEFINIDO,
    },
    {
      'nome': 'Fabio',
      'idade': Random.secure().nextInt(50),
      'nota': 0,
      'status': EStatus.NAO_DEFINIDO,
    },
    {
      'nome': 'Gabriel',
      'idade': Random.secure().nextInt(50),
      'nota': 0,
      'status': EStatus.NAO_DEFINIDO,
    },
    {
      'nome': 'Thobias',
      'idade': Random.secure().nextInt(50),
      'nota': 0,
      'status': EStatus.NAO_DEFINIDO,
    },
    {
      'nome': 'Montoya',
      'idade': Random.secure().nextInt(50),
      'nota': 0,
      'status': EStatus.NAO_DEFINIDO,
    },
  ];
}
