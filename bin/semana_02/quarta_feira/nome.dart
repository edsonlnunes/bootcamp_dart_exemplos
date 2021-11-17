class Nome {
  String primeiroNome;
  String sobrenome;

  Nome({this.primeiroNome, this.sobrenome});

  String get nomeCompleto => '$primeiroNome $sobrenome';

  @override
  String toString() {
    return nomeCompleto;
  }
}
