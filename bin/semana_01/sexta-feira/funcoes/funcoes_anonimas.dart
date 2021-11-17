main() {
  double Function(int, int) somar = (int num1, int num2) {
    return (num1 + num2).toDouble();
  };

  var resultado = somar(5, 5);

  print('Resultado: $resultado');

  verificaSeEImpar(
    10,
    mostrarSeEPar,
    (int numero) {
      print('O $numero é impar');
    },
  );

  botaoCustomizado(texto: 'Login', onPressed: logicaDoBotao);
}

void logicaDoBotao() {
  print('fazendo o login no sistema');
}

void mostrarSeEPar(int numero) {
  print('O $numero é par');
}

void verificaSeEImpar(
  int numero,
  void Function(int) fnEPar,
  void Function(int) fnEImpar,
) {
  if (numero == null) return null;

  if (numero.isEven) {
    fnEPar(numero);
  } else {
    fnEImpar(numero);
  }
}

void botaoCustomizado({String texto, Function onPressed}) {
  print('clicou no botão');
  onPressed();
}
