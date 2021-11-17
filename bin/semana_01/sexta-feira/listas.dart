import 'dart:io';
import 'dart:math';

void main() {
  List<String> devs = ['Edson', 'Gabriel'];
  var idades = <int>[20, 49];

  // var lista = List.filled(5, 1, growable: true);
  // var lista = List.generate(5, (index) => index * 2, growable: false);

  // print(lista);
  // // lista.add(2);
  // print(lista);

  // print(nomes);
  // print(idades);

  // print(idades.length);

  // ###### FOREACH ######

  // for (var i = 0; i < nomes.length; i++) {
  //   print(nomes[i]);
  // }

  // for (var nome in nomes) {
  //   print(nome);
  // }

  devs.forEach((nome) => print(nome));

  // ###### add / addAll ######

  // devs.add('Fabio');
  // devs.addAll(['Thobias', 'Patrick']);

  // var lista = List(10);
  // lista[0] = 'Montoya';

  // ###### insert / insertAll ######

  devs.insert(1, 'Fabio');
  devs.insertAll(devs.length, ['Thobias', 'Patrick']);

  print(devs);

  // ###### remove ######

  // devs.removeLast();
  // // devs.removeRange(0, 2);
  // devs.removeAt(1);
  // // devs.remove('Edson');
  // devs.removeWhere((dev) => dev.contains('a'));

  // atividade

  // criar uma lista de notas (double)
  // fazer um for até 10
  // a cada iteração adicionar a nota na lista (entrada do usuário) | print(Random.secure().nextInt(10));
  // remover todas as notas que forem abaixo de 5 (removeWhere)
  // mostrar a nota

  // var notas = List.generate(
  //   10,
  //   (index) => double.tryParse(
  //     (Random.secure().nextDouble() * 100).toStringAsFixed(2),
  //   ),
  // );

  // print(notas);

  // notas.removeWhere((nota) => nota < 50);

  // print(notas);

  // ###### map ######

  // lista de produtos
  // preco
  // qtd

  // var precoTotal = produtos.map((produto) => produto.preco * qtd);

  // var tamanhosNomes = devs.map((dev) => dev.length).toList();

  // print(tamanhosNomes);

  // ###### where ######

  var notas = <double>[5.7, 4.1, 2, 5, 9.7, 10];

  // var notasFiltradas = notas.where((nota) => nota < 5).toList();
  // var ultimaNotaFiltrada = notas.lastWhere((nota) => nota < 5);
  // var primeiraNotaFiltrada = notas.firstWhere((nota) => nota < 5);
  // print(notasFiltradas);
  // print(ultimaNotaFiltrada);
  // print(primeiraNotaFiltrada);

  // ###### sort ######

  // -1 = altera da esquerda pra direita
  // 0 = fica na mesma posição
  // 1 = altera da direta pra esquerda
  // notas.sort(); // ordem crescente
  // notas.sort((n1, n2) => n2.compareTo(n1)); // ordem decrescente

  // notas.sort((n1, n2) {
  //   if (n1 > n2) return 1;
  //   return -1;
  // });

  // print(notas);

  // ###### reduce | fold ######

  // var soma = 0.0;
  // notas.forEach((nota) => soma += nota);

  // var media = soma / notas.length;
  // print(media);

  print(notas);
//  COM REDUCE
  // 10.7  9.7
  // 20,4  5.7
  // 26.4  4.1
  // 30.5  2.0
  // 32.5

// COM FOLD
  // 5  10.7
  // ...

  var soma = notas.map((nota) => nota * 2).reduce((soma, nota) => soma + nota) /
      notas.length;
  print(soma);

  /*

  // ## atividade ##
  // criar uma lista de notas (double)
  // fazer um for 1 até 10
  // a cada iteração adicionar a nota na lista (entrada do usuário)
  // descubra a média das notas
  // printar no terminal as notas que forem maior do que 7
  // printar no terminal a média das turma
  // mostrar a a pior nota e a melhor nota

  // map, reduce

  var notas = <double>[];

  for (var i = 0; i < 10; i++) {
    print('Nota ${i + 1}: ');
    notas.add(double.tryParse(stdin.readLineSync()) ?? 0);
  }

  var media = notas.fold(0, (soma, nota) => soma + nota) / notas.length;

  var maiorNota = notas.reduce((maior, nota) {
    if (nota > maior) return nota;

    return maior;
  });

  notas.sort();

  var menorNota = notas.first;
  var maiorNotaOrd = notas.last;

  print('Média da turma: $media');
  print('Maior nota: $maiorNota');
  print('Maior nota ord.: $maiorNotaOrd');
  print('Menor nota: $menorNota');

  print('Notas > 7:  ${notas.where((nota) => nota >= 7)}');

  */
}
