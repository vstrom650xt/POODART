import "dart:io";

import "../U2.PA2.dart";
import "Task.dart";

class ToDoList {
  List<Task> todoList = [];

  createTask() {
    String title;
    String description;
    print('write a task ');
    title = stdin.readLineSync() ?? "";
    print('write a description');
    description = stdin.readLineSync() ?? "";
    Task task =
        Task.requi(title: title, description: description, status: false);
    todoList.add(task);
  }

  removeTask() {
    print('write the title u want to remove from the list ');
    String title = stdin.readLineSync() ?? "";
    bool removed = false;

    for (var i = 0; i < todoList.length; i++) {
      if (todoList[i].title == title) {
        todoList.removeAt(i);
      }
    }
  }

  bool markTaskAsDone() {
    print('write the title thar u want to mark as done ');
    String title = stdin.readLineSync() ?? "";
    bool marked = false;

    for (var i = 0; i < todoList.length; i++) {
      if (todoList[i].title == title) {
        todoList[i].status = true;
      }
    }

    return marked = false;
  }

  void showAllTask() {
    for (var task in todoList) {
      print(task);
    }

    for (var i = 0; i < todoList.length; i++) {
      print(todoList[i]);
    }
  }

  void showDoneTask() {
    for (var i = 0; i < todoList.length; i++) {
      if (todoList[i].status == true) {
        print(todoList[i]);
      }
    }
  }

  void showPendingTask() {
    for (var i = 0; i < todoList.length; i++) {
      if (todoList[i].status == false) {
        print(todoList[i]);
      }
    }
  }

  void menu() {
    int response = 0;

    do {
      print('press 1 to add a task ');
      print('press 2 to remove a task ');
      print('press 3 to mark a task ');
      print('press 4 to showAllTask a task ');
      print('press 5 to showDoneTask a task ');
      print('press 6 to showPendingTask a task ');
      print('press 200 to exit ');
      response = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

      if (response == 1) {
        createTask();
      } else if (response == 2) {
        removeTask();
      } else if (response == 3) {
        markTaskAsDone();
      } else if (response == 4) {
        showAllTask();
      } else if (response == 5) {
        showDoneTask();
      } else if (response == 6) {
        showPendingTask();
      } else if (response == 200) {
        exit(1);
      }
    } while (response != 200);
  }
}
