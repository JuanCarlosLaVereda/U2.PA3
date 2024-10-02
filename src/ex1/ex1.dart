import 'dart:io';

import 'Book.dart';
import 'Library.dart';

void main(List<String> args){
 bool end = false;
 String? opcion;
 Library? library = new Library([]);

 while (!end){
   showmenu();
   opcion = stdin.readLineSync();

   if(opcion == "a"){
     print("Insert the name of the book");
     opcion = stdin.readLineSync();
     if(opcion != ""){
       String titulo = opcion!;
       print("Insert the author");
       String? autor = stdin.readLineSync();
       print("Insert the ISBN");
       opcion = stdin.readLineSync();
       if(opcion != ""){
         int isbn = int.parse(opcion!);
         Book book = Book(titulo, autor!, isbn);
         library.addBook(book);
         print("Added the book $titulo to the library!");
       } else{
         print("Something went wrong, try again.");
       }
     } else{
       print("Something went wrong, try again.");
     }
   } else if(opcion == "b"){
     print("Type the book you want to remove");
     opcion = stdin.readLineSync();
     if(opcion != ""){
       Book? book = library.findBook(opcion!);
       if(book != null){
         library.removeBook(opcion);
         print("Removed!");
       } else{
         print("Book not found!");
       }
     }
   } else if(opcion == "c"){
      print("Type the tittle of the book");
      opcion = stdin.readLineSync();
      if(opcion != ""){
        Book? book = library.findBook(opcion!);
        if(book != null){
          print("**********************");
          book.aTexto();
          print("**********************");
        } else{
          print("Book not found!");
        }
      } else{
        print("Something went wrong, try again.");
      }
   } else if (opcion == "d"){
     print("Bye!");
     end = true;
   }
 }
}

void showmenu(){
  print("------------------------------U2.PA3-ex1------------------------------");
  print("         a)New book               b)Remove a book           c)Find book      d)Exit");
}