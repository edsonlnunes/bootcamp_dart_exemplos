class Prova {
  List<String> _gabarito;

  int get qtdPerguntas => _gabarito.length;

  Prova() : _gabarito = ['A', 'C', 'A', 'C', 'B', 'C', 'A', 'B', 'B', 'A'];

  int corrigirProva(List<String> respostas) {
    var nota = 0;
    for (var i = 0; i < _gabarito.length; i++) {
      if (respostas[i] == _gabarito[i]) {
        nota++;
      }
    }

    return nota;
  }
}
