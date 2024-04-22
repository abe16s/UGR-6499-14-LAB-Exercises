import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:provider_posts/post_model.dart';

class PostsNotifier extends ChangeNotifier {
  List<Post> _posts = [];

  List<Post> get posts => _posts;

  Future<void> fetchPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      _posts = data.map((json) => Post.fromJson(json)).toList();
      notifyListeners();
    } else {
      print('Error fetching posts: ${response.statusCode}');
    }
  }
}