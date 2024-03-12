import 'package:tiktok_flutter_clone/Features/home/data/Model/user_model.dart';

class Video {
  final int id;
  final String title;
  final String videoUrl;
  final User creator;
  final List<Comment> comments;
  final int likes;

  Video({
    required this.id,
    required this.title,
    required this.videoUrl,
    required this.creator,
    required this.comments,
    required this.likes,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json['id'] as int,
      title: json['title'] as String,
      videoUrl: json['videoUrl'] as String,
      creator: User.fromJson(json['creator'] as Map<String, dynamic>),
      comments: (json['comments'] as List)
          .map((commentJson) => Comment.fromJson(commentJson))
          .toList(),
      likes: json['likes'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'videoUrl': videoUrl,
      'creator': creator.toJson(),
      'comments': comments.map((comment) => comment.toJson()).toList(),
      'likes': likes,
    };
  }
}

class Comment {
  final int id;
  final String text;
  final User commenter; // نربط التعليق بمستخدم
  final DateTime timestamp;

  Comment({
    required this.id,
    required this.text,
    required this.commenter,
    required this.timestamp,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'] as int,
      text: json['text'] as String,
      commenter: User.fromJson(json['commenter'] as Map<String, dynamic>),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'text': text,
      'commenter': commenter.toJson(),
      'timestamp': timestamp.toIso8601String(),
    };
  }
}
