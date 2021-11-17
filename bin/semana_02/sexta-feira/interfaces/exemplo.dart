abstract class IAcoesAnimal {
  void comer();
  void andar();
}

class Leao implements IAcoesAnimal {
  @override
  void andar() {
    print('O Leão está andando');
  }

  @override
  void comer() {
    print('O Leão está comendo');
  }
}

class Leopardo implements IAcoesAnimal {
  @override
  void andar() {
    print('O Leopardo está andando');
  }

  @override
  void comer() {
    print('O Leopardo está comendo');
  }
}

void main() {
  var leao = Leao();

  var leopardo = Leopardo();

  andar(leopardo);
}

void andar(IAcoesAnimal animal) {
  animal.andar();
}
