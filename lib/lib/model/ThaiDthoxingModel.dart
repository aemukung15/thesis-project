// ignore_for_file: file_names
import 'Payload.dart';

class ThaiDthoxingModel {
  String msg;
  Payload payload;

  ThaiDthoxingModel({
    required this.msg,
    required this.payload,
  });

  factory ThaiDthoxingModel.fromJson(Map<String, dynamic> json) =>
      ThaiDthoxingModel(
        msg: json["msg"],
        payload: Payload.fromJson(json["payload"]),
      );

  Map<String, dynamic> toJson() => {
        "msg": msg,
        "payload": payload.toJson(),
      };
}
