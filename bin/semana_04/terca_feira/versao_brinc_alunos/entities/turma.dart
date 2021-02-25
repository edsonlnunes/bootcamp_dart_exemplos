import 'aluno.dart';
import 'entidade.dart';

class Turma extends Entidade {
  List<Aluno> _alunos;

  List<Aluno> get alunos => List.unmodifiable(_alunos);

  Turma(int id)
      : _alunos = [],
        super(id);

  Turma.fromMap(Map<String, dynamic> map) : super(map['id'] as int) {
    _alunos = (map['alunos'] as List).map((a) => Aluno.fromMap(a)).toList();
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'alunos': _alunos.map((a) => a.toMap()).toList(),
    };
  }

  void addAluno(Aluno aluno) {
    _alunos.add(aluno);
  }

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
}
