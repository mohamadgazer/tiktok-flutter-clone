import 'package:tiktok_flutter_clone/Features/home/data/Model/user_model.dart';

class Follower {
  final int id;
  final User follower;
  final User following;

  Follower({
    required this.id,
    required this.follower,
    required this.following,
  });

  factory Follower.fromJson(Map<String, dynamic> json) {
    return Follower(
      id: json['id'] as int,
      follower: User.fromJson(json['follower'] as Map<String, dynamic>),
      following: User.fromJson(json['following'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'follower': follower.toJson(),
      'following': following.toJson(),
    };
  }
}
