import 'dart:io';

import 'Product.dart';
import 'ShoppingCart.dart';

void main(List<String> args){
  bool end = false;
  String? opcion;
  ShoppingCart shoppingCart = new ShoppingCart([]);

  while(!end){
    showmenu();
    opcion = stdin.readLineSync();
    if(opcion == "a"){
      print("Type the name of the product");
      opcion = stdin.readLineSync();
      if (opcion != ""){
        String nombre = opcion!;
        print("Type the price of the product");
        opcion = stdin.readLineSync();
        if(opcion != ""){
          double precio = double.parse(opcion!);
          print("How much products?");
          opcion = stdin.readLineSync();
          if(opcion != ""){
            int cantidad = int.parse(opcion!);
            Product product = Product(nombre, precio, cantidad);
            shoppingCart.addProduct(product);
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
    } else if(opcion == "b"){
      print("Type the name of the product");
      opcion = stdin.readLineSync();
      if(opcion != ""){
        if(shoppingCart.findProduct(opcion!) != null){
          shoppingCart.removeProduct(opcion);
          print("Removed!");
        } else{
          print("Pruduct not found!");
        }
      } else{
        print("Something went wrong, try again.");
      }

    } else if(opcion == "c"){
      double price = shoppingCart.totalPrice();
      print("Total price of the cart: $price");
    } else if(opcion == "d"){
      end = true;
      print("Bye!");
    }
  }

}

void showmenu(){
  print("-------------------------------------------U2.PA3-ex2-------------------------------------------");
  print("         a)Add new product               b)Remove a product           c)Total        d)Exit");
}