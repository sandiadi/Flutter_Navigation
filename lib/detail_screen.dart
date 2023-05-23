import 'package:flutter/material.dart';

class TodosScreen extends StatelessWidget {
  // Requiring the list of todos.
  const TodosScreen({super.key, required this.todos});

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("V${todos.length}"),
      ),
      //passing in the ListView.builder
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
          );
        },
      ),
    );
  }
}

class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

final todos = List.generate(
  20,
      (i) => Todo(
    'Todo $i',
    'A description of what needs to be done for Todo $i',
  ),
);