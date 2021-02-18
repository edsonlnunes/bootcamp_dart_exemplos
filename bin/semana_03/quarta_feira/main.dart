import 'dart:convert';
import 'dart:io';

class ErroCustomizado implements Exception {}

void main() async {
  var file = File('nomes.json');

  await file.writeAsString({'nome': 'Edson', 'idade': 23}.toString());

  var conteudo = await file.readAsString();

  print(conteudo);

  // atividade
  // ler nome e idade do terminal
  // criar um map com essas informações
  // salvar em um arquivo json
  // mostrar no final o conteudo do arquivo
  // probleminha = ??
}

void trativaDeErro() {
  try {
    print('teste');
    throw ErroCustomizado();
    // throw Exception();
  } on ErroCustomizado catch (e) {
    print('ErroCustomizado erro');
  } catch (e) {
    print('erro genérico');
  } finally {
    print('completou');
  }
}

Future<void> printComAsync() async {
  print('inicou');
  await Future.delayed(Duration(seconds: 2));
  print('mensagem do meio');
  print('finalizou');
}

void printComThen() {
  print('inicou');
  Future.delayed(Duration(seconds: 2))
      .then((_) => throw ErroCustomizado())
      .catchError((e) => print('erro Customizado0'),
          test: (error) => error is ErroCustomizado)
      .catchError((e) => print('erro'))
      .whenComplete(() => print('terminou'));
  print('finalizou');
}
