class UserAuthentication {
  final int id;
  final String username;
  final String email;
  final String
      password; // يجب عدم تخزين كلمات المرور بنص عادي في الواقع، يُفضل استخدام تقنيات التشفير.

  UserAuthentication({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
  });

  factory UserAuthentication.fromJson(Map<String, dynamic> json) {
    return UserAuthentication(
      id: json['id'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'password': password,
    };
  }
}
