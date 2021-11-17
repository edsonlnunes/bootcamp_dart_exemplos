import 'entidade.dart';

class Pessoa extends Entidade {
  String nome;
  int idade;

  Pessoa({int id, this.nome, this.idade}) : super(id);

  Pessoa.fromMap(Map<String, dynamic> map)
      : nome = map['nome'],
        idade = map['idade'] as int,
        super(map['id'] as int);
}

void main() {
  var pessoa = Pessoa(id: 1);
  print(pessoa.id);
}
