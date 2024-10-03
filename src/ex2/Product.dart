import 'dart:io';

class Product{
  String _name;    // Nombre del producto
  double _price;   // Precio del producto
  int _quantity;   // Cantidad del producto

  // Constructor para inicializar los atributos
  Product(this._name, this._price, this._quantity);

  // Getters para acceder a los atributos privados
  String get name => _name;
  double get price => _price;
  int get quantity => _quantity;

  // Metodo que imprime los detalles del producto
  void aTexto(){
    print("Titulo: $name");
    print("Autor: $price");
    print("ISBN: $quantity");
  }
}
