import 'dart:math';

import '../extension_methods.dart';
import 'pessoa.dart';

enum EStatus { APROVADO, REPROVADO, NAO_DEFINIDO }

class Aluno {
  Pessoa dadosPessoais;
  int _nota;
  EStatus _status;

  String get nome => dadosPessoais.nome;
  int get idade => dadosPessoais.idade;
  int get id => dadosPessoais.id;
  int get nota => _nota;
  EStatus get status => _status;

  Aluno({int id, String nome, int idade})
      : _status = EStatus.NAO_DEFINIDO,
        dadosPessoais = Pessoa(id: id, idade: idade, nome: nome);

  Aluno.fromMap(Map<String, dynamic> map)
      : _status = map['status'].toString().convertToEStatus(),
        _nota = map['nota'] as int,
        dadosPessoais = Pessoa.fromMap(map);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'idade': idade,
      'nota': _nota,
      'status': _status.convertToString(),
    };
  }

  List<String> responderProva({
    int qtdPerguntas,
    List<String> respostasPermitidas,
  }) {
    var respostas = <String>[];
    for (var i = 0; i < qtdPerguntas; i++) {
      respostas.add(respostasPermitidas[
          Random.secure().nextInt(respostasPermitidas.length)]);
    }

    return respostas;
  }

  void aplicarResultadoDaProva(int nota) {
    if (_status != EStatus.NAO_DEFINIDO) throw 'Aluno já tem nota';

    _nota = nota;
    _status = nota > 4 ? EStatus.APROVADO : EStatus.REPROVADO;
  }

  @override
  String toString() {
    return '$nome | $idade | $_nota | $_status';
  }
}

main() {
  var aluno = Aluno(nome: 'Edson', idade: 24);

  // aluno.aplicarResultadoDaProva(5);

  // aluno.aplicarResultadoDaProva(2);

  print(aluno.responderProva(
      qtdPerguntas: 5, respostasPermitidas: ['A', 'B', 'C', 'D']));
}
