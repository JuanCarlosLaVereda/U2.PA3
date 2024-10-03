import 'dart:ffi';
import 'dart:io';
import 'Product.dart';

class ShoppingCart{
  List<Product> _products;  // Lista de productos en el carrito

  // Constructor que inicializa la lista de productos
  ShoppingCart(this._products);

  // Getter para obtener la lista de productos
  List<Product> get products => _products;

  // Añadir un producto al carrito
  void addProduct(Product product){
    products.add(product);
  }

  // Buscar un producto por su nombre
  Product? findProduct(String nombre){
    if(products.any((p) => p.name == nombre)){
      return products.firstWhere((p) => p.name == nombre);
    }
    return null;
  }

  // Eliminar un producto del carrito por su nombre
  void removeProduct(String nombre){
    Product product = findProduct(nombre)!;  // Encuentra el producto
    products.remove(product);  // Elimina el producto
  }

  // Calcular el precio total del carrito
  double totalPrice(){
    double price = 0.0;

    // Sumar el precio de cada producto multiplicado por su cantidad
    if(products.length > 0) {
      for (Product product in products) {
        price += (product.price * product.quantity);
      }
    }
    return price;
  }
}
