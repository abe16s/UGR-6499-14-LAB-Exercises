import 'package:bloc_posts/post_model.dart';

abstract class PostsState {}

class PostsLoading extends PostsState {}

class PostsLoaded extends PostsState {
  final List<Post> posts;

  PostsLoaded(this.posts);
}

class PostsError extends PostsState {
  final String error;

  PostsError(this.error);
}