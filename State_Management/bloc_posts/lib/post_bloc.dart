import 'dart:convert';

import 'package:bloc_posts/post_events.dart';
import 'package:bloc_posts/post_model.dart';
import 'package:bloc_posts/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsLoading()) {
    on<LoadPosts>(_onLoadPosts);
  }

  Future<void> _onLoadPosts(LoadPosts event, Emitter<PostsState> emit) async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        final posts = data.map((json) => Post.fromJson(json)).toList();
        emit(PostsLoaded(posts));
      } else {
        emit(PostsError('Error fetching posts'));
      }
    } catch (error) {
      emit(PostsError(error.toString()));
    }
  }
}
