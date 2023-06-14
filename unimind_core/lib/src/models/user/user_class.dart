import 'dart:convert';

class User {
  String? name;
  String? email;
  DateTime? birthDate;
  String? role;
  bool? isEmailVerified;

  User({this.name,
      this.email,
      this.birthDate,
      this.role,
      this.isEmailVerified});

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        email: json["email"],
        birthDate: DateTime.tryParse(json["birthDate"]),
        role: json["phone"],
        isEmailVerified: json["isEmailVerified"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "role": role,
        "birthDate": birthDate.toString(),
        "isEmailVerified": isEmailVerified,
      };
}

List<User> userModelFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userModelToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
