// 5. Escreva um programa em Dart para criar uma classe Camera com
// propriedades privadas [id, marca, cor, preço]. Crie métodos getter e setter
// para acessar e modificar os valores. Além disso, crie 3 objetos dela e
// imprima todos os detalhes.

class Camera {
  String id;
  String marca;
  String cor;
  double preco;

  Camera(this.id, this.marca, this.cor, this.preco);

  String getId() => this.id;
  String getMarca() => this.marca;
  String getCor() => this.cor;
  double getPreco() => this.preco;

  void setId(id) => this.id = id;
  void setMarca(marca) => this.marca = marca;
  void setCor(cor) => this.cor = cor;
  void setPreco(preco) => this.preco = preco;

  @override
  String toString() {
    return 'id: $id, marca: $marca, cor: $cor, preço: $preco';
  }
}

void main() {
  Camera camera1 = Camera("Id1", "Camera1", "Preta", 1500.00);
  Camera camera2 = Camera("Id2", "Camera2", "Branca", 2500.00);
  Camera camera3 = Camera("Id3", "Camera3", "Azul", 3500.00);

  print("Cameras:\n$camera1\n$camera2\n$camera3");

  camera3.setCor('novaCor');
  
  print("Cameras:\n$camera1\n$camera2\n$camera3");
}