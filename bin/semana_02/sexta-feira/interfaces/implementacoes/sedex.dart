import 'frete_servico.dart';

class Sedex implements IFreteServico {
  @override
  double calcularFrete() {
    return 12.50;
  }
}
