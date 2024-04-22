import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_posts/post_model.dart';

final postsProvider = ChangeNotifierProvider<PostsNotifier>((ref) {
  return PostsNotifier(posts: []);
});

class PostsNotifier extends ChangeNotifier{
  List<Post> posts;
  PostsNotifier({required this.posts});

  Future<void> fetchPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      posts = data.map((json) => Post.fromJson(json)).toList();
      notifyListeners();
    } else {
      print('Error fetching posts: ${response.statusCode}');
    }
  }
}