// 2. Escreva um programa em Dart para criar uma classe House com as
// propriedades [id, nome, preço]. Crie um construtor para ela e crie 3
// objetos. Adicione-os a uma lista e imprima todos os detalhes.

class House {
  final String id;
  final String nome;
  final double preco;

  House(this.id, this.nome, this.preco);

  @override
  String toString() {
    return 'id: $id, nome: $nome, preço: $preco';
  }
}

void main() {

  House house1 = House('1', 'Casa 1', 150000.0);
  House house2 = House('2', 'Casa 2', 200000.0);
  House house3 = House('3', 'Casa 3', 250000.0);

  List<House> houses = [house1, house2, house3];
  houses.forEach((house) {print(house);});
}