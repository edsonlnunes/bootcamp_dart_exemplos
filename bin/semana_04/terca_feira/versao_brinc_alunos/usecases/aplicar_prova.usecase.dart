import '../contracts/usecases/aplicar_prova_usecase.contract.dart';
import '../entities/prova.dart';
import '../entities/turma.dart';

class AplicarProvaUseCase implements IAplicarProvaUseCase {
  @override
  void execute(Turma turma) {
    final prova = Prova();

    for (var aluno in turma.alunos) {
      var respostas = aluno.responderProva(
        qtdPerguntas: prova.qtdPerguntas,
        respostasPermitidas: ['A', 'B', 'C'],
      );

      var nota = prova.corrigirProva(respostas);

      aluno.aplicarResultadoDaProva(nota);
    }
  }
}
