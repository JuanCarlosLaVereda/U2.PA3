import 'dart:io';

import 'Book.dart';

class Library{
  List<Book> _books;

  Library(this._books);

  List<Book> get books => _books;
  
  void addBook(Book book){
    books.add(book);
  }
  
  void removeBook(String name){
    books.remove(findBook(name));
  }
  
  Book? findBook(String nombre){
    if(books.any((b)=> b.tittle == nombre)){
      return books.firstWhere((b) => b.tittle == nombre);
    }
    return null;
  }
}