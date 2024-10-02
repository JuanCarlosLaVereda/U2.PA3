import 'dart:io';

class Book{
  String _tittle;
  String _author;
  int _ISBN;

  Book(this._tittle, this._author, this._ISBN);

  int get ISBN => _ISBN;

  String get author => _author;

  String get tittle => _tittle;

  void aTexto(){
    print("Titulo: $tittle");
    print("Autor: $author");
    print("ISBN: $ISBN");
  }
}