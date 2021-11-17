import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'controllers/card_controller.dart';
import 'enties/card.dart';

void main() async {
  var controller = CardController();

  var opcao = 0;
  while (opcao != 6) {
    print('''
     ==========================================
      Bem-vindo ao sistema de Cards o/

      Escolha uma das opções:
      1 - Buscar todos os cards
      2 - Buscar card pelo ID
      3 - Criar card
      4 - Atualizar card
      5 - Deletar card
      6 - Sair
    ===========================================
    ''');
    opcao = int.tryParse(stdin.readLineSync()) ?? 0;
    switch (opcao) {
      case 1:
        print('Buscando por todos os Cards...');
        await controller.buscarTodosCards();
        break;
      case 2:
        print('Digite o id do card');
        var id = int.tryParse(stdin.readLineSync()) ?? 0;
        await controller.buscarCardId(Card(id: id));
        break;
      case 3:
        print('Digite um Titulo para o Card:');
        var titulo = stdin.readLineSync();
        print('Digite o conteudo do Card:');
        var conteudo = stdin.readLineSync();
        var id = await controller.qtdCards();
        print(id);
        await controller
            .criarCard(Card(id: id, title: titulo, content: conteudo));
        break;
      case 4:
        print('Digite o id do Card para editar:');
        var id = int.tryParse(stdin.readLineSync()) ?? 0;
        print('ID $id - Titulo do Card:');
        var titulo = stdin.readLineSync();
        print('ID $id - Conteudo do Card:');
        var conteudo = stdin.readLineSync();
        await controller
            .atualizarCard(Card(id: id, title: titulo, content: conteudo));
        break;
      case 5:
        print('Digite o id do Card para Excluir');
        var id = int.tryParse(stdin.readLineSync()) ?? 0;
        await controller.deletarCard(Card(id: id));
        break;
      case 6:
        print('''
        ===========================
        Saíndo do sistema....
        Valeu, falows o/
        ===========================
        ''');
        break;

      default:
        print('Opcao Invalida');
    }
  }
}
