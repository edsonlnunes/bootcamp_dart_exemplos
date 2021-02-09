void main() {
  // List = É uma lista indexada
  // Set = É uma lista não indexada

  Set devs = <String>{'Edson', 'Gabriel', 'Diego', 'Ravel', 'Edson'};
  Set nomes = <String>{'Patrick', 'Gustavo', 'Fabio', 'Diego', 'Gabriel'};

  // difference
  // intersection
  // union

  var union = devs.union(nomes);

  var intersection = devs.intersection(nomes);

  var difference = nomes.difference(devs);

  print(devs);
  print(nomes);
  print('Union: $union');
  print('Intersection: $intersection');
  print('Difference: $difference');
}
