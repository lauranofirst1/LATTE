// models/story_model.dart
class Story {
  final String name;
  final String image;
  final bool isMe;

  Story({
    required this.name,
    required this.image,
    this.isMe = false,
  });
}
