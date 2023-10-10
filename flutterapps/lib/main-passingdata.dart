//step 1 : model class to hold data
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

//Step 2: Create Master Screen to display todos data.

class TodosScreen extends StatelessWidget {
  final List<Todo> todos;

  const TodosScreen({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos"),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(todo: todos[index])));
              },
            );
          }),
    );
  }
}
  
//Details Screen
class DetailsScreen extends StatelessWidget {
  final Todo todo;

  const DetailsScreen({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(todo.title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(todo.description),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'MyTodo app',
    home: TodosScreen(
        todos: List.generate(
            20, (index) => Todo("Todo $index ", "Description of $index}"))),
  ));
}
