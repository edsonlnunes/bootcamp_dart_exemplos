import 'frete_servico.dart';

class Fedex implements IFreteServico {
  @override
  double calcularFrete() {
    return 57.99;
  }
}

// class Fedex {
//   @override
//   double calcularFreteFedex() {
//     return 57.99;
//   }
// }
