import 'dart:io';
import 'Task.dart';
import 'ToDoList.dart';

void main(List<String> args) {
  String? opcion;
  bool end = false;  // Control para el ciclo del menú
  ToDoList toDoList = new ToDoList([]);  // Inicializa la lista de tareas vacía

  while (!end) {
    showmenu();  // Muestra el menú
    opcion = stdin.readLineSync();  // Lee la opción del usuario

    // Opción para añadir una tarea
    if (opcion == "a") {
      print("Type the name of the task");
      opcion = stdin.readLineSync();
      if (opcion != "") {
        String tittle = opcion!;
        print("Type the description");
        opcion = stdin.readLineSync();
        Task task = new Task(tittle, opcion!, false);  // Crea una nueva tarea
        toDoList.addTask(task);  // Añade la tarea a la lista
        print("Added!");
      } else {
        print("Something went wrong, try again.");
      }
    }
    // Opción para eliminar una tarea
    else if (opcion == "b") {
      print("Type the name of the task");
      opcion = stdin.readLineSync();
      if (toDoList.removeTask(opcion!)) {  // Elimina la tarea por su nombre
        print("Removed!");
      } else {
        print("Something went wrong, try again.");
      }
    }
    // Opción para marcar una tarea como completada
    else if (opcion == "c") {
      print("Type the name of the task");
      opcion = stdin.readLineSync();
      if (opcion != "" && toDoList.tasks.any((t) => t.tittle == opcion!)) {
        Task task = toDoList.tasks.firstWhere((t) => t.tittle == opcion!);
        toDoList.markAsTaskDone(task);  // Marca la tarea como hecha
        print("Done!");
      } else {
        print("Something went wrong, try again.");
      }
    }
    // Opción para ver todas las tareas
    else if (opcion == "d") {
      for (Task task in toDoList.tasks) {
        print("************************************");
        task.aTexto();  // Muestra los detalles de la tarea
        print("************************************");
      }
    }
    // Opción para ver tareas completadas
    else if (opcion == "e") {
      for (Task task in toDoList.tasks) {
        if (task.status) {  // Filtra las tareas hechas
          print("************************************");
          task.aTexto();
          print("************************************");
        }
      }
    }
    // Opción para ver tareas pendientes
    else if (opcion == "f") {
      for (Task task in toDoList.tasks) {
        if (!task.status) {  // Filtra las tareas no hechas
          print("************************************");
          task.aTexto();
          print("************************************");
        }
      }
    }
    // Opción para salir del programa
    else if (opcion == "g") {
      end = true;  // Termina el ciclo
      print("Bye!");
    }
  }
}

// Función para mostrar el menú al usuario
void showmenu() {
  print("-----------------------------------------------------------------U2.PA3-ex5-----------------------------------------------------------------");
  print("a)Add Task         b)Remove a task           c)Mark task as done      d)View all tasks      e)View completed       f)Pending tasks     g)Exit");
}
