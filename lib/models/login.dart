
class Login {
  final String email;
  final String password;

  Login({
    required this.email,
    required this.password,
  });

  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );
  }
}
