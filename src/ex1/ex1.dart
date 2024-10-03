import 'dart:io';
import 'Book.dart';
import 'Library.dart';

void main(List<String> args){
  bool end = false;  // Control para el ciclo del menú
  String? opcion;    // Opción del usuario
  Library? library = new Library([]);  // Inicializa una biblioteca vacía

  while (!end){
    showmenu();  // Mostrar el menú
    opcion = stdin.readLineSync();  // Leer la opción del usuario

    // Opción para añadir un libro
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
          int isbn = int.parse(opcion!);  // Convertir ISBN a entero
          Book book = Book(titulo, autor!, isbn);
          library.addBook(book);  // Añadir el libro a la biblioteca
          print("Added the book $titulo to the library!");
        } else{
          print("Something went wrong, try again.");
        }
      } else{
        print("Something went wrong, try again.");
      }
    }
    // Opción para eliminar un libro
    else if(opcion == "b"){
      print("Type the book you want to remove");
      opcion = stdin.readLineSync();
      if(opcion != ""){
        Book? book = library.findBook(opcion!);  // Buscar el libro
        if(book != null){
          library.removeBook(opcion);  // Eliminar el libro
          print("Removed!");
        } else{
          print("Book not found!");
        }
      }
    }
    // Opción para buscar un libro
    else if(opcion == "c"){
      print("Type the tittle of the book");
      opcion = stdin.readLineSync();
      if(opcion != ""){
        Book? book = library.findBook(opcion!);  // Buscar el libro
        if(book != null){
          print("**********************");
          book.aTexto();  // Mostrar detalles del libro
          print("**********************");
        } else{
          print("Book not found!");
        }
      } else{
        print("Something went wrong, try again.");
      }
    }
    // Opción para salir del programa
    else if (opcion == "d"){
      print("Bye!");
      end = true;  // Termina el ciclo
    }
  }
}

// Función que muestra el menú al usuario
void showmenu(){
  print("------------------------------U2.PA3-ex1------------------------------");
  print("a)New book               b)Remove a book           c)Find book      d)Exit");
}
