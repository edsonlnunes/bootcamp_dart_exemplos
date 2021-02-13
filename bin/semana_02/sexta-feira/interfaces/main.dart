import 'frete.dart';
import 'implementacoes/fedex.dart';
import 'implementacoes/sedex.dart';
import 'implementacoes/tnt.dart';

void main(List<String> args) {
  var frete = Frete();

  // var valorFrete = frete.calcularFrete('tnt');
  // var valorFrete = frete.calcularFrete('sedex');
  // var valorFrete = frete.calcularFrete('fedex');

  var freteSedex = frete.calcularFrete(Sedex());
  var freteTnt = frete.calcularFrete(Tnt());
  var freteFedex = frete.calcularFrete(Fedex());

  print('(SEDEX) O valor do frete é $freteSedex');
  print('(TNT) O valor do frete é $freteTnt');
  print('(FEDEX) O valor do frete é $freteFedex');

  // ATIVIDADE

  print('Enviando email com o Gmail...');
  // Criar um contrato de serviço de e-mail que possui o método enviar email.
  // Criar 3 classes de envio de e-mail que implementam esse contrato de serviço de e-mail (Gmail, Hotmail, Uol...).
  // Criar uma classe Usuário e criar um método chamado notificar usuário que recebe o contrato de serviço de e-mail.
  // No main, criar um objeto do tipo usuário e chamar o método de notificar usuário passando a implementação de um serviço de e-mail.
}

// class SedexMock implements IFreteServico {
//   @override
//   double calcularFrete() {
//     throw 'Erro no serviço';
//   }
// }
