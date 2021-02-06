void main() {
  // metodos = é quando estão dentro de uma classe
  // funções = é quando ta solta em um arquivo

  funcaoComParametro('Edson');

  print(funcaoComRetorno());

  // criarCarroParametrosOpcionaisPosicionais('Civic', 'Honda', 200, 0);

  criarCarroParametrosOpcionaisNomeados(
    modelo: 'Civic',
    marca: 'Honda',
    velocidadeMax: 250,
    velocidadeMin: 10,
  );

  // exemplo de classe no flutter utilizando os parametros nomeados
  // Text('TExto na tela', style: TextStyle(fontSize: 12, fontWeigth:  ));

  // exercicio 01

  // criarPessoa
  // nome (obrigatorio)
  // genero (obrigatorio)
  // cpf (opcional nomeado)
  // telefone (opcional nomeado)

  criarPessoa('Edson', true, cpf: '12345678911');

  // exercicio 02

  // criar uma função para mostrar a tabuada
  // essa funcao deve receber o número de qual tabuada vai mostrar
  mostrarTabuada(10);
}

//TIPO_RETORNO nomeDaFuncao(TIPO_PARAMETRO nomeDoParametro){}
void funcaoSemRetorno() {
  print('Testando');
}

void funcaoComParametro(String nome) {
  print(nome);
}

String funcaoComRetorno() {
  return 'Chamou a função com retorno';
}

void criarCarroParametrosOpcionaisPosicionais(String modelo, String marca,
    [int velocidadeMin, int velocidadeMax]) {
  print(
      'Modelo: $modelo .... Marca: $marca ... Velocidade Min: ${velocidadeMin ?? 'Não definido'} ... Velocidade Max: ${velocidadeMax ?? 'Não definido'} ');
}

void criarCarroParametrosOpcionaisNomeados({
  String modelo,
  String marca,
  int velocidadeMin,
  int velocidadeMax,
}) {
  print(
      'Modelo: $modelo .... Marca: $marca ... Velocidade Min: ${velocidadeMin ?? 'Não definido'} ... Velocidade Max: ${velocidadeMax ?? 'Não definido'} ');
}

// atividades

// criarPessoa
// nome (obrigatorio)
// genero (obrigatorio)
// cpf (opcional nomeado)
// telefone (opcional nomeado)

void criarPessoa(String nome, bool eMasculino, {String cpf, String telefone}) {
  print('''
  Nome: $nome
  Gerênero: ${eMasculino ? 'Homem' : 'Mulher'}
  Cpf: ${cpf ?? '000.000.000-00'}
  Telefone: ${telefone ?? '(00) 0 0000-0000'}
  ''');
}

// criar uma função para mostrar a tabuada
// essa funcao deve receber o número de qual tabuada vai mostrar

void mostrarTabuada(int base) {
  for (var i = 1; i <= 10; i++) {
    print('$i * $base = ${i * base}');
  }
}
