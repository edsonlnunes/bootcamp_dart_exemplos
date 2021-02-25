import '../contracts/usecases/matricular_alunos_usecase.contract.dart';
import '../entities/aluno.dart';
import '../entities/turma.dart';

class MatricularAlunosUseCase implements IMatricularAlunosUseCase {
  @override
  Turma execute() {
    final turma = Turma(1);

    for (var i = 0; i < 10; i++) {
      var aluno = Aluno(
        id: i + 1,
        nome: 'Aluno $i',
        idade: 20 + i,
      );

      if (turma.alunos.any((a) => a.id == aluno.id)) {
        throw 'Aluno já cadastrado';
      }

      turma.addAluno(aluno);
    }

    return turma;
  }
}
