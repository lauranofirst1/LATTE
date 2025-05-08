import 'package:flutter/material.dart';
import 'package:instagram/data/post_dummy_data.dart';
import 'package:instagram/components/post_item.dart';
import 'package:instagram/components/story_list.dart'; // 추가

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0.5,
        shadowColor: Colors.black12,
        title: Image.asset('assets/images/insta_logo.png', height: 60),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.send, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          const StoryList(),
          const Divider(height: 1),
          ...dummyPosts.map((post) => PostItem(post: post)).toList(),
        ],
      ),
    );
  }
}
