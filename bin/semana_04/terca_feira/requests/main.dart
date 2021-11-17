import 'dart:convert';

import 'package:dio/dio.dart';

class Todo {
  String title;
  int id;

  Todo({this.title, this.id});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'id': id,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Todo(
      title: map['title'],
      id: map['id'],
    );
  }

  @override
  String toString() {
    return 'title: $title   |   id: $id';
  }
}

// https://jsonplaceholder.typicode.com/todos/1
void main() async {
  final urlBase = 'https://jsonplaceholder.typicode.com';

  final dio = Dio(BaseOptions(
    baseUrl: urlBase,
  ));

  final response = await dio.delete('/posts/1');

  // try {
  //   print(await dio.get('/todos/201'));
  // } on DioError catch (e) {
  //   print(e.error);
  //   print(e.type);
  //   print(e.message);
  // } catch (e) {
  //   print('caiu no catch geral');
  // }

  // print(
  //   (response.data as List).map((e) => Todo.fromMap(e)),
  // );

  print(response);

  // ,  e um

  // post e put
//   {
//   title: 'foo',
//   body: 'bar',
// }

  // delete qualquer id

  // get : criar a classe da api que vcs usarem e criem o toMap e fromMap com o site que mostrei
}
