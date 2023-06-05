// To parse this JSON data, do
//
//     final registerRequestModel = registerRequestModelFromJson(jsonString);

import 'dart:convert';

RegisterRequestModel registerRequestModelFromJson(String str) =>
    RegisterRequestModel.fromJson(json.decode(str));

String registerRequestModelToJson(RegisterRequestModel data) =>
    json.encode(data.toJson());

class RegisterRequestModel {
  String email;
  String password;
  String confirmPassword;
  String phone;
  String firstName;
  String lastName;
  String username;

  RegisterRequestModel({
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.phone,
    required this.firstName,
    required this.lastName,
    required this.username,
  });

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      RegisterRequestModel(
        email: json["email"],
        password: json["password"],
        confirmPassword: json["confirmPassword"],
        phone: json["phone"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "confirmPassword": confirmPassword,
        "phone": phone,
        "firstName": firstName,
        "lastName": lastName,
        "username": username,
      };
}
