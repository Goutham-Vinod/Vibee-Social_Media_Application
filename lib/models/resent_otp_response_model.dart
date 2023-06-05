// To parse this JSON data, do
//
//     final resentOtpResponseModel = resentOtpResponseModelFromJson(jsonString);

import 'dart:convert';

ResentOtpResponseModel resentOtpResponseModelFromJson(String str) =>
    ResentOtpResponseModel.fromJson(json.decode(str));

String resentOtpResponseModelToJson(ResentOtpResponseModel data) =>
    json.encode(data.toJson());

class ResentOtpResponseModel {
  bool success;
  bool? verified;

  ResentOtpResponseModel({
    required this.success,
    this.verified,
  });

  factory ResentOtpResponseModel.fromJson(Map<String, dynamic> json) =>
      ResentOtpResponseModel(
        success: json["success"],
        verified: json["verified"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "verified": verified,
      };
}
