// ignore_for_file: file_names, prefer_typing_uninitialized_variables

class ThaiDthoxingModel {
  final stepId;
  final name;
  final detail;
  final stepImage;
  final muscleImage;

  ThaiDthoxingModel({
    this.stepId,
    this.name,
    this.detail,
    this.stepImage,
    this.muscleImage,
  });

  factory ThaiDthoxingModel.fromjson(Map<String, dynamic> json) {
    return ThaiDthoxingModel(
      stepId: json["step_id"],
      name: json["name"],
      detail: json["detail"],
      stepImage: json["step_image"],
      muscleImage: json["muscle_image"],
    );
  }
  Map<String, dynamic> toJsonAdd() {
    return {
      "name": name,
      "detail": detail,
      "step_image": stepImage,
      "muscle_image": muscleImage
    };
  }

  static fromJson(jsonDecode) {}
}
