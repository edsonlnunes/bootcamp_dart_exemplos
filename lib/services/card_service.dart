import 'package:dio/dio.dart';
import '../enties/card.dart';

class CardService {
  final dio = Dio(
    BaseOptions(baseUrl: 'https://api-cards-growdev.herokuapp.com'),
  );

  Future buscarTodosCards() async {
    try {
      var response = await dio.get('/cards');
      return response.data;
    } on DioError catch (e) {
      print('Erro CardService/Dio GET/ $e');
    }
    return null;
  }

  Future buscarCardId(int id) async {
    try {
      var response = await dio.get('/cards/$id');
      print(response.data);

      return response.data;
    } on DioError catch (e) {
      print('Erro CardService/Dio GET/ $e');
    }
    return null;
  }

  Future criarCard(int id, String titulo, String conteudo) async {
    try {
      var response = await dio.post(
        '/cards',
        data: Card(title: titulo, content: conteudo).toJson(),
      );
      print(response.data);
      return response.data;
    } on DioError catch (e) {
      print('Erro CardService/Dio GET/ $e');
    }
    return null;
  }

  Future atualizarCard(int id, String titulo, String conteudo) async {
    try {
      var response = await dio.put(
        '/cards/$id',
        data: Card(title: titulo, content: conteudo).toJson(),
      );
      print(response.data);
      return response.data;
    } on DioError catch (e) {
      print('Erro CardService/Dio GET/ $e');
    }
    return null;
  }

  Future deletarCard(int id) async {
    try {
      var response = await dio.delete('/cards/$id');
      print(response.data);
      return response.data;
    } on DioError catch (e) {
      print('Erro CardService/Dio GET/ $e');
    }
    return null;
  }
}
