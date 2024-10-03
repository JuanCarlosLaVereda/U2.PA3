import 'dart:io';
import 'Book.dart';

class Library{
  List<Book> _books;  // Lista de libros en la biblioteca

  // Constructor que inicializa la lista de libros
  Library(this._books);

  // Getter para obtener la lista de libros
  List<Book> get books => _books;

  // Añadir un libro a la biblioteca
  void addBook(Book book){
    books.add(book);
  }

  // Remover un libro de la biblioteca por título
  void removeBook(String name){
    books.remove(findBook(name));
  }

  // Buscar un libro por su título
  Book? findBook(String nombre){
    if(books.any((b)=> b.tittle == nombre)){
      return books.firstWhere((b) => b.tittle == nombre);
    }
    return null;
  }
}
