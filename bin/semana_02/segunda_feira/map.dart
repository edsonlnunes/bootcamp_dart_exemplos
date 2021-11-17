import 'dart:math';

enum ESituacao {
  APROVADO,
  REPROVADO,
}

void main() {
  var pessoa = <String, dynamic>{
    'nome': 'Edson',
    'idade': 24,
    'notas': [
      10,
      8,
      2,
    ],
    'endereco': {
      'rua': 'Rua X',
      'cidade': 'NH',
    }
  };

  print(pessoa['notas']);

  // ## foreach ##
  // pessoa.forEach((key, value) {
  //   print('key: $key');
  //   print('value: $value');
  // });

  // print('keys: ${pessoa.keys}');
  // print('values: ${pessoa.values}');

  // ## add ##

  // pessoa.addAll({
  //   'cpf': '000.333.555-55',
  //   'telefone': '51 9 8888-7777',
  // });

  // pessoa.addEntries([
  //   MapEntry('cpf', '000.333.555-55'),
  //   MapEntry('telefone', '51 9 8888-7777'),
  // ]);

  // ## map ##

  var p = pessoa.map((key, value) {
    if (key == 'notas') {
      return MapEntry(key, (value as List<int>).map((nota) => nota * 2));
    }

    return MapEntry(key, value);
  });

  // pessoa['notas'] = (pessoa['notas'] as List<int>).map((nota) => nota * 2);

  print(p);

  // ## contains ##

  var temNome = pessoa.containsKey('nome');
  var temGenero = pessoa.containsKey('genero');
  var temValorEdson = pessoa.containsValue('Édson');
  print('map tem nome? $temNome');
  print('map tem genero? $temGenero');
  print('map tem Edson? $temValorEdson');

  // ## remove ##

  pessoa.remove('nome');
  pessoa.removeWhere((key, value) {
    if (key == 'idade' && (value as int) == 24) return true;

    return false;
  });

  print(pessoa);

  // ====== ATIVIDADES ======

  // nota pelo terminal ou Random.secure().nextInt(10);

  // Criar ma lista de alunos com as keys nome, idade, situacao, nota
  // A partir da lista de alunos criar uma lista somente com as notas dos alunos
  // A partir da lista de alunos criar uma lista de alunos aprovados (nota maior que 5)
  // Por fim remover a key idade de todos os alunos

  var alunos = <Map<String, dynamic>>[
    {
      'nome': 'Aluno 1',
      'idade': 21,
    },
    {
      'nome': 'Aluno 2',
      'idade': 22,
    },
    {
      'nome': 'Aluno 3',
      'idade': 23,
    },
    {
      'nome': 'Aluno 4',
      'idade': 24,
    },
  ];

  alunos.forEach((aluno) {
    var notaAluno = Random.secure().nextInt(11);
    aluno.addAll({
      'nota': notaAluno,
      'situacao': notaAluno >= 5 ? ESituacao.APROVADO : ESituacao.REPROVADO,
    });
  });

  var notas = alunos.map((aluno) => (aluno['nota'] as int)).toList();

  print('');
  print('Notas: $notas');

  var aprovados = alunos.where(
    (aluno) => (aluno['situacao'] as ESituacao) == ESituacao.APROVADO,
  );

  print('');
  print('Aprovados: $aprovados');

  var alunosSemIdade = alunos.map((aluno) {
    var alunoMap = aluno;
    alunoMap.remove('idade');

    return alunoMap;
  }).toList();

  print('');
  print('Alunos: $alunosSemIdade');
}
