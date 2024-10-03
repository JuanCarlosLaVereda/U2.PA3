import 'dart:io';

class Task {
  String _tittle;         // Título de la tarea
  String _description;    // Descripción de la tarea
  bool _status;           // Estado de la tarea (completada o no)

  // Constructor para inicializar la tarea
  Task(this._tittle, this._description, this._status);

  // Getters para acceder a los atributos privados
  bool get status => _status;
  String get description => _description;
  String get tittle => _tittle;

  // Setter para actualizar el estado de la tarea
  set status(bool value) {
    _status = value;
  }

  // Método que imprime la tarea
  void aTexto() {
    print("Titulo de la tarea: $tittle");
    print("Descripción: $description");
    print("Hecha: $status");
  }
}
