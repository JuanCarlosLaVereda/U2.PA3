import 'dart:io';
import 'Product.dart';
import 'ShoppingCart.dart';

void main(List<String> args){
  bool end = false;  // Control del ciclo del menú
  String? opcion;    // Opción del usuario
  ShoppingCart shoppingCart = new ShoppingCart([]);  // Inicializa el carrito vacío

  while(!end){
    showmenu();  // Mostrar menú
    opcion = stdin.readLineSync();  // Leer la opción del usuario

    // Opción para añadir un producto
    if(opcion == "a"){
      print("Type the name of the product");
      opcion = stdin.readLineSync();
      if (opcion != ""){
        String nombre = opcion!;
        print("Type the price of the product");
        opcion = stdin.readLineSync();
        if(opcion != ""){
          double precio = double.parse(opcion!);  // Convertir el precio a doble
          print("How much products?");
          opcion = stdin.readLineSync();
          if(opcion != ""){
            int cantidad = int.parse(opcion!);  // Convertir cantidad a entero
            Product product = Product(nombre, precio, cantidad);
            shoppingCart.addProduct(product);  // Añadir producto al carrito
            print("Added!");
          } else{
            print("Something went wrong");
          }
        } else{
          print("Something went wrong, try again.");
        }
      } else{
        print("Something went wrong, try again.");
      }
    }
    // Opción para eliminar un producto
    else if(opcion == "b"){
      print("Type the name of the product");
      opcion = stdin.readLineSync();
      if(opcion != ""){
        if(shoppingCart.findProduct(opcion!) != null){
          shoppingCart.removeProduct(opcion);  // Eliminar producto del carrito
          print("Removed!");
        } else{
          print("Product not found!");
        }
      } else{
        print("Something went wrong, try again.");
      }
    }
    // Opción para mostrar el precio total del carrito
    else if(opcion == "c"){
      double price = shoppingCart.totalPrice();  // Calcular el precio total
      print("Total price of the cart: $price");
    }
    // Opción para salir del programa
    else if(opcion == "d"){
      end = true;  // Termina el ciclo
      print("Bye!");
    }
  }
}

// Función que muestra el menú al usuario
void showmenu(){
  print("-------------------------------------------U2.PA3-ex2-------------------------------------------");
  print("a)Add new product               b)Remove a product           c)Total        d)Exit");
}
