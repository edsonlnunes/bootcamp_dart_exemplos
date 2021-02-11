import 'nome.dart';

class Pessoa {
  String id;
  Nome nome;
  int idade;
  String _cpf;

  Pessoa(this.nome, this._cpf, this.idade);
  // Pessoa.opcional({this.nome, this.idade, String cpf}) {
  //   _cpf = cpf;
  // }
  Pessoa.opcional({this.nome, this.idade, String cpf}) : _cpf = cpf;
  Pessoa.vazio();

  String get cpf => _cpf;
  set cpf(String value) {
    if (value.isNotEmpty) _cpf = value;
  }

  void alterarCPF(String value) {
    if (value.isNotEmpty) _cpf = value;
  }

  void fazerAniversario() {
    idade++;
  }

  String formatarCpf() {
    return '${_cpf.substring(0, 3)}.${_cpf.substring(3, 6)}.${_cpf.substring(6, 9)}-${_cpf.substring(9)}';
  }

  @override
  String toString() {
    return '''
    Nome: $nome
    CPF: $_cpf
    Idade: $idade
    ''';
  }
}
