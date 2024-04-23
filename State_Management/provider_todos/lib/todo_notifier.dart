import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:provider_posts/todo_model.dart';

class TodosNotifier extends ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  Future<void> fetchTodos() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      _todos = data.map((json) => Todo.fromJson(json)).toList();
      notifyListeners();
    } else {
      print('Error fetching todos: ${response.statusCode}');
    }
  }
}