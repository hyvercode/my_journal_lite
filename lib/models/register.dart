class Register {
  final String? email;
  final String? password;
  final String? phoneNumber;
  final String? fullName;

  Register({this.email, this.password, this.phoneNumber, this.fullName});

  factory Register.fromJson(Map<String, dynamic> json) {
    return Register(
      email: json['email'],
      password: json['password'],
      phoneNumber: json['phoneNumber'],
      fullName: json['fullName']
    );
  }
}
