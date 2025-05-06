import 'package:flutter/material.dart';
import '../models/post_model.dart';

class PostItem extends StatefulWidget {
  final Post post;

  const PostItem({super.key, required this.post});

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  bool isLiked = false;
  bool isBookmarked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  void toggleBookmark() {
    setState(() {
      isBookmarked = !isBookmarked;
    });
  }

  @override
  Widget build(BuildContext context) {
    final post = widget.post;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       ListTile(
  contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
  leading: CircleAvatar(
    backgroundImage: AssetImage(post.userImage),
  ),
  title: Text(
    post.username,
    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
  ),
  trailing: const Icon(Icons.more_vert),
),

        Image.asset(post.postImage, fit: BoxFit.cover, width: double.infinity),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: isLiked ? Colors.red : Colors.black,
                ),
                onPressed: toggleLike,
              ),
              IconButton(
                icon: const Icon(Icons.comment_outlined),
                onPressed: () => print('댓글 버튼 클릭됨'),
              ),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: () => print('공유 버튼 클릭됨'),
              ),
              const Spacer(),
              IconButton(
                icon: Icon(
                  isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                ),
                onPressed: toggleBookmark,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            '❤️ ${isLiked ? post.likes + 1 : post.likes}명이 좋아합니다',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [
                TextSpan(text: post.username, style: const TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(text: '  '),
                TextSpan(text: post.content),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Text(
            post.date,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
