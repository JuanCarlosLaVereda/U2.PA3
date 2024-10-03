import 'dart:io';

class Book{
  String _tittle;  // Título del libro
  String _author;  // Autor del libro
  int _ISBN;       // ISBN del libro

  // Constructor que inicializa los atributos
  Book(this._tittle, this._author, this._ISBN);

  // Getters para acceder a los atributos privados
  int get ISBN => _ISBN;
  String get author => _author;
  String get tittle => _tittle;

  // Método que imprime los detalles del libro
  void aTexto(){
    print("Titulo: $tittle");
    print("Autor: $author");
    print("ISBN: $ISBN");
  }
}
