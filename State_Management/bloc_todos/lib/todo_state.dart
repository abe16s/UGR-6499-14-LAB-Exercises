import 'package:bloc_posts/todo_model.dart';

abstract class TodosState {}

class TodosLoading extends TodosState {}

class TodosLoaded extends TodosState {
  final List<Todo> todos;

  TodosLoaded(this.todos);
}

class TodosError extends TodosState {
  final String error;

  TodosError(this.error);
}