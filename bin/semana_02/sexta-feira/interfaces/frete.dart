// import 'interfaces/implementacoes/fedex.dart';
// import 'interfaces/implementacoes/sedex.dart';
// import 'interfaces/implementacoes/tnt.dart';

import 'implementacoes/frete_servico.dart';

class Frete {
  // double calcularFrete(String servico) {
  //   double valorFrete = 0;

  //   switch (servico.toLowerCase()) {
  //     case 'sedex':
  //       // var sedex = Sedex();
  //       // valorFrete = sedex.calcularFreteSedex();
  //       break;
  //     case 'fedex':
  //       var fedex = Fedex();
  //       valorFrete = fedex.calcularFreteFedex();
  //       break;
  //     case 'tnt':
  //       // var tnt = Tnt();
  //       // valorFrete = tnt.calcularFreteTnt();
  //       break;
  //     default:
  //     // var sedex = Sedex();
  //     // valorFrete = sedex.calcularFreteSedex();
  //   }

  //   return valorFrete;
  // }

  double calcularFrete(IFreteServico frete) {
    var valorFrete = frete.calcularFrete();
    return valorFrete;
  }
}
