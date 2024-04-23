import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_posts/todo_notifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodosNotifier(),
      child: MaterialApp(
        title: 'Todos App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final todosNotifier = Provider.of<TodosNotifier>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      todosNotifier.fetchTodos();
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        centerTitle: true,
        title: const Text('Provider All Todos'),
      ),
      body: Consumer<TodosNotifier>(
        builder: (context, todosNotifier, child) {
          if (todosNotifier.todos.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: todosNotifier.todos.length,
              itemBuilder: (context, index) {
                final todo = todosNotifier.todos[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${index + 1}'),
                    backgroundColor: Colors.amber,
                  ),
                  title: Text(todo.title),
                  trailing: todo.completed ? Icon(Icons.check_box): Icon(Icons.check_box_outline_blank),
                );
              },
            );
          }
        },
      ),
    );
  }
}
