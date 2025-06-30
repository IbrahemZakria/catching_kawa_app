class InteryLogenData {
  String? name;
  String? email;
  String? password;
  String? avatar;

  InteryLogenData({this.name, this.email, this.password, this.avatar});

  factory InteryLogenData.fromJson(Map<String, dynamic> json) {
    return InteryLogenData(
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      avatar: json['avatar'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'password': password,
    'avatar': avatar,
  };
}
