import 'package:bloc_posts/post_bloc.dart';
import 'package:bloc_posts/post_events.dart';
import 'package:bloc_posts/post_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'post_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Posts App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => PostsBloc(),
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PostsBloc>(context).add(LoadPosts());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        centerTitle: true,
        title: const Text('Bloc All Posts'),
      ),
      body: BlocBuilder<PostsBloc, PostsState>(
        builder: (context, state) {
          if (state is PostsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PostsLoaded) {
            final posts = state.posts;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text('${index + 1}'),
                  ),
                  title: Text(post.title),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PostDetailScreen(post: post),
                      ),
                    );
                  },
                );
              },
            );
          } else if (state is PostsError) {
            return Center(child: Text(state.error));
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

class PostDetailScreen extends StatelessWidget {
  final Post post;

  const PostDetailScreen({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(post.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(child: Text(post.body)),
      ),
    );
  }
}