import 'aluno.dart';
import 'turma.dart';

class Prova {
  List<String> _gabarito;

  Prova() : _gabarito = ['A', 'C', 'A', 'C', 'B', 'C', 'A', 'B', 'B', 'A'];

  // int aplicarProva(Aluno aluno) {
  //   var respostas = aluno.responderProva(
  //     qtdPerguntas: _gabarito.length,
  //     respostasPermitidas: ['A', 'B', 'C'],
  //   );

  //   var nota = _corrigirProva(respostas);

  //   return nota;
  // }

  void aplicarProva(Turma turma) {
    for (var aluno in turma.alunos) {
      var respostas = aluno.responderProva(
        qtdPerguntas: _gabarito.length,
        respostasPermitidas: ['A', 'B', 'C'],
      );

      var nota = _corrigirProva(respostas);

      aluno.aplicarResultadoDaProva(nota);
    }
  }

  int _corrigirProva(List<String> respostas) {
    var nota = 0;
    for (var i = 0; i < _gabarito.length; i++) {
      if (respostas[i] == _gabarito[i]) {
        nota++;
      }
    }

    return nota;
  }
}

void main() {
  var prova = Prova();
  var turma = Turma();

  var edson = Aluno(nome: 'Edson', idade: 24);
  var gustavo = Aluno(nome: 'Gustavo', idade: 24);

  turma.matricularAluno(edson);
  turma.matricularAluno(gustavo);

  prova.aplicarProva(turma);
}
