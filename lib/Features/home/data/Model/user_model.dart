class User {
  final int id;
  final String username;
  final String email;
  final String password;
  final String profilePicture;
  final DateTime joinDate;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.profilePicture,
    required this.joinDate,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      profilePicture: json['profilePicture'] as String,
      joinDate: DateTime.parse(json['joinDate'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'password': password,
      'profilePicture': profilePicture,
      'joinDate': joinDate.toIso8601String(),
    };
  }
}
