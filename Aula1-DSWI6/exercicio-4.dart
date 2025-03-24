//4. Escreva um programa em Dart para criar uma classe Animal com as
//propriedades [id, nome, cor]. Crie outra classe chamada Cat e a estenda de
//Animal. Adicione uma nova propriedade chamada som (do tipo String). Crie
//um objeto de Cat e imprima todos os detalhes.

class Animal {
  final String id;
  final String nome;
  final String cor;

  Animal(this.id, this.nome, this.cor);

  @override
  String toString() {
    return 'id: $id, nome: $nome, cor: $cor';
  }
}

class Cat extends Animal {
  final String som;

  Cat(String id, String nome, String cor, this.som) : super(id, nome, cor);

  @override
  String toString() => super.toString() + ", Som: $som";
}

void main() {
  Cat cat = Cat("cat1", "Pingo", "Preto", "Miau");

  print(cat);
}
