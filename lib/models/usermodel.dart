// To parse this JSON data, do
//
//     final consellorModel = consellorModelFromJson(jsonString);

import 'dart:convert';

ConsellorModel consellorModelFromJson(String str) =>
    ConsellorModel.fromJson(json.decode(str));

String consellorModelToJson(ConsellorModel data) => json.encode(data.toJson());

class ConsellorModel {
  final String? token;

  ConsellorModel({
    this.token,
  });

  ConsellorModel copyWith({
    String? token,
  }) =>
      ConsellorModel(
        token: token ?? this.token,
      );

  factory ConsellorModel.fromJson(Map<String, dynamic> json) => ConsellorModel(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
