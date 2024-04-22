import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_posts/post_notifier.dart';
import 'post_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PostsNotifier(),
      child: MaterialApp(
        title: 'Posts App',
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
    final postsNotifier = Provider.of<PostsNotifier>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      postsNotifier.fetchPosts();
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        centerTitle: true,
        title: const Text('Provider All Posts'),
      ),
      body: Consumer<PostsNotifier>(
        builder: (context, postsNotifier, child) {
          if (postsNotifier.posts.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: postsNotifier.posts.length,
              itemBuilder: (context, index) {
                final post = postsNotifier.posts[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${index + 1}'),
                    backgroundColor: Colors.amber,
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