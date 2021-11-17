import 'entities/turma.dart';
import 'repositories/file.repository.dart';
import 'usecases/aplicar_prova.usecase.dart';
import 'usecases/matricular_alunos.usecase.dart';

/**
1. Criar uma classe (abstrata) chamada Entidade que irá conter o seguinte atributo: 
1.1. ID (String ou int)
1.2. Construtor que recebe o ID

2. Fazer a classe Pessoa e Turma estender a classe Entidade.

3. Alterar as lógicas de verificar se o aluno já está cadastrado para procurar pelo ID

4. Criar uma pasta chamada “entities”
4.1. Colocar as classes Aluno, Pessoa, Prova, Turma e Entidade nessa pasta

5. Criar uma pasta chamada “contracts”
5.1. Criar uma pasta chamada “repositories”
5.1.1. Criar um contrato chamado IStorageRepository
5.1.1.1. Definir um método com a assinatura: Future<void> save(Turma turma);
5.1.1.2. Definir um método com a assinatura: Future<Turma> recovery();
5.2. Criar uma pasta chamada “usecases”
5.2.1. Criar um contrato chamado IAplicarProvaUseCase
5.2.1.1. Definir um método com a assinatura: Future<void> execute(Turma turma);
5.2.2. Criar um contrato chamado IMatricularAlunosUseCase
5.2.2.1. Definir um método com a assinatura: Turma execute();

6. Criar uma pasta chamada “repositories”
6.1. Criar uma classe FileRepository que implementa o contrato IStorageRepository

7. Criar uma pasta chamada “usecases”
7.1. Criar uma classe chamada AplicarProvaUseCase que implementa o contrato IAplicarProvaUseCase
7.2. Criar uma classe chamada MatricularAlunosUseCase  que implementa o contrato IMatricularAlunosUseCase

Agora que criamos alguns contratos, classes e alteramos alguns arquivos, vamos refatorar o código de fato. 

8. Na implementação do FileRepository precisa ser implementado 2 métodos:
8.1. Recovery
8.1.1. Criar a lógica para recuperar a turma de um arquivo JSON
8.2. Save
8.2.1. Criar a lógica para salvar uma turma em um arquivo JSON

9. Na implementação do usecase AplicarProvaUseCase precisa ser implementado o método execute:
9.1. Deve ser movido a lógica de aplicar a prova que está dentro da classe Prova para dentro desse método execute (fazendo suas devidas alterações para dar certo)

10. Na implementação do usecase MatricularAlunosUseCase precisa ser implementado o método execute:
10.1. Deve ser movido a lógica de matricular aluno que está dentro da classe Turma para dentro desse método execute (fazendo suas devidas alterações para dar certo)

11. No método main a lógica deve ser mais ou menos essa: 
11.1. Criar uma instância do FileRepository
11.2. Recuperar a turma com o método recovery que está no FileRepository
11.3. Verificar se tem alguma turma cadastrada, caso não existir uma turma (ou seja, a turma vai ser null) deve ser criado uma instância de MatricularAlunoUseCase e AplicarProvaUseCase e executar esses dois casos de uso para fazer a matricula dos alunos e também aplicar a prova, lembrando de salvar a turma quando a prova for aplicada.
11.4. E por último, depois da turma for criada e a prova aplicada ou se a turma já existir, deve ser mostrado o resultado 

12. Criar os seguintes métodos na classe Turma
12.1 fromMap: Este cara pode ser um construtor nomeado, ele tem a função de receber um Map e transformar em uma objeto do tipo Turma
12.2 toMap: Este cara é um método, ele tem a função de transformar o objeto Turma para um Map

13.1 Criar os seguintes métodos na classe Aluno
13.1 fromMap: Este cara pode ser um construtor nomeado, ele tem a função de receber um Map e transformar em uma objeto do tipo Aluno
13.2 toMap: Este cara é um método, ele tem a função de transformar o objeto Aluno para um Map

14.1 Criar os seguintes métodos na classe Pessoa
15.1 fromMap: Este cara pode ser um construtor nomeado, ele tem a função de receber um Map e transformar em uma objeto do tipo Pessoa
15.2 toMap: Este cara é um método, ele tem a função de transformar o objeto Pessoa para um Map

OBS: Os passos descritos são sugestões e ideias de como fazer, você podem fazer da maneira que vocês acharem melhor, desde que respeitam as classes e a organização definida
 */

void main() async {
  final storage = FileRepository();

  Turma turma = await storage.recovery();

  if (turma == null) {
    final matricularAlunosUseCase = MatricularAlunosUseCase();
    final aplicarProvaUseCase = AplicarProvaUseCase();

    turma = matricularAlunosUseCase.execute();
    aplicarProvaUseCase.execute(turma);

    await storage.save(turma);
  }

  mostrarResultados(turma);
}

void mostrarResultados(Turma turma) {
  print('Média: ${turma.calcularMedia()}');
  print('Aluno com maior nota: ${turma.melhorAluno()}');
  print('Aluno com menor nota: ${turma.piorAluno()}');

  print('Alunos aprovados');
  print(turma.aprovados());

  print('Alunos reprovados');
  print(turma.reprovados());
}
