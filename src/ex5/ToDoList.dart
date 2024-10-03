import 'dart:io';
import 'Task.dart';

class ToDoList {
  List<Task> _tasks;  // Lista de tareas

  // Constructor para inicializar la lista de tareas
  ToDoList(this._tasks);

  // Getter para obtener la lista de tareas
  List<Task> get tasks => _tasks;

  // Añadir una tarea a la lista
  void addTask(Task task) {
    tasks.add(task);
  }

  // Eliminar una tarea por su título
  bool removeTask(String nombre) {
    if (tasks.any((t) => t.tittle == nombre)) {
      tasks.remove(tasks.firstWhere((t) => t.tittle == nombre));
      return true;
    }
    return false;
  }

  // Marcar una tarea como completada
  bool markAsTaskDone(Task task) {
    if (task.status) {
      return false;  // Si ya está hecha, no cambia
    }
    task.status = true;  // Cambiar el estado a completado
    return true;
  }
}
