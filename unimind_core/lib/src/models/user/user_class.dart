import 'dart:convert';

class User {
  String? id;
  String? name;
  String? email;
  DateTime? birthDate;
  String? role;
  bool? isEmailVerified;

  User(
      {this.id,
      this.name,
      this.email,
      this.birthDate,
      this.role,
      this.isEmailVerified});

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        birthDate: DateTime.tryParse(json["birthDate"]),
        role: json["role"],
        isEmailVerified: json["isEmailVerified"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "role": role,
        "birthDate": birthDate.toString(),
        "isEmailVerified": isEmailVerified,
      };
}

List<User> userModelFromJson(dynamic userJson) =>
    List<User>.from(userJson.map((x) => User.fromJson(x)));

String userModelToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
