// 1. Escreva um programa em Dart para criar uma classe Laptop com as
// propriedades [id, nome, ram] e crie 3 objetos dela, imprimindo todos os
// detalhes.

class Laptop {
  String id;
  String nome;
  String ram;

  Laptop(this.id, this.nome, this.ram);

  @override
  String toString() {
    return "id: $id, nome: $nome, ram: $ram";
  }
}

void main() {
  // Criando três objetos da classe Laptop
  Laptop l1 = Laptop("id01", "Laptop 01", "8GB");
  Laptop l2 = Laptop("id02", "Laptop 02", "16GB");
  Laptop l3 = Laptop("id03", "Laptop 03", "32GB");

  // Imprimindo os objetos, cada um em uma linha
  print('$l1\n$l2\n$l3');
}
