enum ETipoCalculo {
  SOMA, // 0
  SUBTRACAO, // 1
  MULTI, // 2
  DIVISAO, //3
}

void main() {
  switch (ETipoCalculo.MULTI) {
    case ETipoCalculo.DIVISAO:
      print('divisao');
      break;
    case ETipoCalculo.MULTI:
      print('multi');
      break;
    case ETipoCalculo.SOMA:
      print('soma');
      break;
    case ETipoCalculo.SUBTRACAO:
      print('subtracao');
      break;
    default:
  }

  if (4 < 6) {
    print('e menor');
  } else if (4 < 2) {
    print('else if');
  } else {
    print('e maior');
  }

  var nome = 'Edson';
  switch (nome.toUpperCase()) {
    case 'EDSON':
      print('EDSON');
      break;
    case 'ROLDAO':
      {
        print('roldao');
        break;
      }
    default:
      print('default');
  }

  var condicao = (1 == 1) ? 'Verdadeiro' : 'False';

  var num1 = null;
  var num2 = 12;
  var num3 = 14;

  var valor = num1 ?? num2 ?? num3;

  print('valor : $valor');

  int valor3 = num1 != null ? num1 : num2;

  int valor2;

  if (num1 != null)
    valor2 = num1;
  else
    valor2 = num2;

  int _valor = null;

  print(_valor?.toDouble() ?? 25);
}
