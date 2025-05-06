// models/post_model.dart
class Post {
  final String username;
  final String userImage;
  final String postImage;
  final String content;
  final String date;
  final int likes;
  final int comments;

  Post({
    required this.username,
    required this.userImage,
    required this.postImage,
    required this.content,
    required this.date,
    this.likes = 0,
    this.comments = 0,
  });
}
