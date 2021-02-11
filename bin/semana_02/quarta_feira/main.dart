import 'nome.dart';
import 'pessoa.dart';

void main() {
  // var pessoa = Pessoa()
  //   ..nome = 'Edson'
  //   ..cpf = '11111111111'
  //   ..idade = 24;

  // pessoa.nome = 'Edson';
  // pessoa.cpf = '111.111.111-11';
  // pessoa.idade = 24;

  var pessoa = Pessoa.opcional(
    nome: Nome(primeiroNome: 'Edson', sobrenome: 'Martins'),
    cpf: '11111111111',
    idade: 24,
  );
  var p = Pessoa.vazio();

  // pessoa.fazerAniversario();

  pessoa.cpf = '44455566677';

  print(pessoa.formatarCpf());
  print(pessoa.nome.nomeCompleto);

  // -> criar uma classe chamado Carro || Moto || Aviao
  // -> criem alguns atributos e comportamentos
  // -> criem algum atributo que não seja legal expor a qualquer um e
  //  que seja modifocado somente por setter ou um método
}
