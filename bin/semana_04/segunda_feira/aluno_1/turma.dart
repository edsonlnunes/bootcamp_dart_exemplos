import 'aluno.dart';
import 'prova.dart';

class Turma {
  List<Aluno> _alunos;

  List<Aluno> get alunos => List.unmodifiable(_alunos);

  Turma() : _alunos = [];

  void matricularAluno(Aluno aluno) {
    if (_alunos.any((a) => a.nome.toLowerCase() == aluno.nome.toLowerCase())) {
      throw 'Aluno já cadastrado';
    }

    _alunos.add(aluno);
  }

  // void aplicarProva(Prova prova) {
  //   for (var aluno in _alunos) {
  //     var nota = prova.aplicarProva(aluno);
  //     aluno.aplicarResultadoDaProva(nota);
  //   }
  // }

  double calcularMedia() {
    var media = calcularTotal() / _alunos.length;
    return media;
  }

  int calcularTotal() {
    var total = _alunos.fold<int>(0, (total, aluno) => total + aluno.nota);
    return total;
  }

  List<Aluno> aprovados() {
    var aprovados =
        _alunos.where((aluno) => aluno.status == EStatus.APROVADO).toList();
    return aprovados;
  }

  List<Aluno> reprovados() {
    var reprovados =
        _alunos.where((aluno) => aluno.status == EStatus.REPROVADO).toList();
    return reprovados;
  }

  Aluno piorAluno() {
    var alunosReprovados = reprovados();

    if (alunosReprovados.isEmpty) return null;

    var piorAluno = alunosReprovados.reduce((piorAluno, aluno) {
      if (aluno.nota < piorAluno.nota) return aluno;

      return piorAluno;
    });

    return piorAluno;
  }

  Aluno melhorAluno() {
    var alunosAprovados = aprovados();

    if (alunosAprovados.isEmpty) return null;

    var malhorAluno = alunosAprovados.reduce((malhorAluno, aluno) {
      if (aluno.nota > malhorAluno.nota) return aluno;

      return malhorAluno;
    });

    return malhorAluno;
  }

  void mostrarResultados() {
    print('Média: ${calcularMedia()}');
    print('Aluno com maior nota: ${melhorAluno()}');
    print('Aluno com menor nota: ${piorAluno()}');

    print('Alunos aprovados');
    print(aprovados());

    print('Alunos reprovados');
    print(reprovados());
  }

  @override
  String toString() {
    // TODO: implement toString
    return _alunos.length.toString();
  }
}

void main() {
  var turma = Turma();

  var edson = Aluno(nome: 'Edson', idade: 24);
  edson.aplicarResultadoDaProva(9);
  var diego = Aluno(nome: 'Diego', idade: 24);
  diego.aplicarResultadoDaProva(7);

  turma.matricularAluno(edson);
  turma.matricularAluno(diego);

  turma.mostrarResultados();
}
