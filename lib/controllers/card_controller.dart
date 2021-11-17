import '../enties/card.dart';
import '../services/card_service.dart';

class CardController {
  var cardService = CardService();

  void buscarTodosCards() async {
    var resposta = await cardService.buscarTodosCards();
    print(
      (resposta as List).map(
        (e) => Card.fromJson(e),
      ),
    );
  }

  Future<int> qtdCards() async {
    var resposta = await cardService.buscarTodosCards();
    return (resposta as List).length;
  }

  void buscarCardId(Card card) async {
    print(await cardService.buscarCardId(card.id));
  }

  void criarCard(Card card) async {
    print(await cardService.criarCard(card.id, card.title, card.content));
  }

  void atualizarCard(Card card) async {
    print(await cardService.atualizarCard(card.id, card.title, card.content));
  }

  void deletarCard(Card card) async {
    print(await cardService.deletarCard(card.id));
  }
}
