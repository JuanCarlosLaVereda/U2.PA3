import 'dart:ffi';
import 'dart:io';

import 'Product.dart';

class ShoppingCart{
  List<Product> _products;

  ShoppingCart(this._products);

  List<Product> get products => _products;

  void addProduct(Product product){
    products.add(product);
  }

  Product? findProduct(String nombre){
      if(products.any((p) => p.name == nombre)){
        return products.firstWhere((p) => p.name == nombre);
      }
      return null;
  }

  void removeProduct(String nombre){
    Product product = findProduct(nombre)!;
    products.remove(product);
  }

  double totalPrice(){
    double price = 0.0;

    if(products.length>0) {
      for (Product product in products) {
        price += (product.price * product.quantity);
      }
      return price;
    }
    return price;
  }
}