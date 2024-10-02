import 'dart:io';

class Product{
  String _name;
  double _price;
  int _quantity;

  Product(this._name, this._price, this._quantity);


  String get name => _name;

  void aTexto(){
    print("Titulo: $name");
    print("Autor: $price");
    print("ISBN: $quantity");
  }

  double get price => _price;

  int get quantity => _quantity;
}