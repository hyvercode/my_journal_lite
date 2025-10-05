
class Register {
  final String email;
  final String password;
  final String name;
  final String phoneNumber;

  Register({
    required this.email,
    required this.password,
    required this.name,
    required this.phoneNumber,
  });

  factory Register.fromJson(Map<String, dynamic> json) {
    return Register(
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phoneNumber: json['phone_number'] as String? ?? '',
    );
  }
}
