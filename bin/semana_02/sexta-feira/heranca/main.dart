class Animal {
  String nome;
  double peso;
  int idade;
  String especie;

  Animal({
    this.nome,
    this.peso,
    this.idade,
    this.especie,
  });

  Animal.vazio({this.especie});

  void comer() {
    print('O $nome está comendo...');
  }

  void andar() {
    print('O $nome está andando...');
  }

  void correr() {
    print('O $nome está correndo...');
  }
}

class Cachorro extends Animal {
  Cachorro({
    String nome,
    double peso,
    int idade,
  }) : super(idade: idade, nome: nome, peso: peso, especie: 'Cachorro');

  Cachorro.vazio() : super.vazio(especie: 'Cachorro');

  void cacar() {
    print(' o dog está caçando');
  }

  @override
  void andar() {
    super.andar();
    print('O Jubileu é mto loco, ele não anda, o bixo só voa');
  }

  @override
  void comer() {
    print('O dog está comendo...');
  }
}

class Gato extends Animal {
  Gato({
    String nome,
    double peso,
    int idade,
  }) : super(idade: idade, nome: nome, peso: peso, especie: 'Gato');

  Gato.vazio() : super.vazio(especie: 'Gato');

  @override
  void comer() {
    print('O gato está comendo...');
  }
}

void main() {
  var cachorro = Cachorro(idade: 5, nome: 'Jubileu', peso: 10);
  var gato = Gato(idade: 5, nome: 'Miau', peso: 10);

  var animal = Animal(especie: 'Jacaré', idade: 22, nome: 'Do mato', peso: 26);
  // A extends B
  // A == B

  // Animal == Cachorro = false

  // Cachorro == Animal = true

  // darComidaParaOAnimal(cachorro);
  // darComidaParaOAnimal(gato);

  darComidaParaOCachorro(animal);
}

void darComidaParaOGato(Gato gato) {
  gato.comer();
}

void darComidaParaOCachorro(Cachorro cachorro) {
  cachorro.comer();
}

void darComidaParaOAnimal(Animal animal) {
  animal.comer();
}
