import 'aluno.dart';
import 'prova.dart';
import 'turma.dart';

/**
 Desenvolva uma nova versão da a atividade Brincando com Alunos feita com Map, só que agora utilizando classes. O que precisa ter nessa refatoração:
-- Uma classe com nome Pessoa
---- Atributo nome
---- Atributo idade

-- Uma classe com nome Aluno
---- Atributo dadosPessoais do tipo Pessoa
---- Atributo nota (privada)
---- Atributo status (privada)
---- Ação de aplicar resultado da prova (aplicar a nota da prova como nota do aluno e atualizar o status. Lembrando que só poderá ser adicionado o resultado da prova se o aluno estiver com o status NAO_DEFINIDO)

-- Classe Prova
---- Atributo gabarito (Uma lista de string) (privada)
---- Uma ação de aplicar a prova

-- Uma classe com nome Turma
---- Atributo alunos (uma lista de alunos) (privada)
---- Ação de matricular aluno (não pode permitir alunos repetidos)
---- Ação de aplicar prova na turma  -- falta fazer
---- Ação de calcular e retornar a média da turma
---- Ação de calcular e retornar o total das notas
---- Ação de retornar uma lista de alunos aprovados
---- Ação de retornar uma lista de alunos reprovados
---- Ação de retornar o melhor aluno (nota mais alta)
---- Ação de retornar o pior aluno (nota mais baixa)
---- Ação de mostrar os resultados da turma (Mostrar os mesmos resultados que foram mostrados na versão inicial da atividade.

Toda essa estrutura feita vai ser usada no método main, ou seja, é no método main que iramos instanciar as classes e chamar os métodos 
 */

void main() {
  var turma = Turma();
  var prova = Prova();

  for (var i = 0; i < 10; i++) {
    var aluno = Aluno(
      nome: 'Aluno $i',
      idade: 20 + i,
    );

    turma.matricularAluno(aluno);
  }

  // turma.aplicarProva(prova);

  prova.aplicarProva(turma);

  turma.mostrarResultados();
}
