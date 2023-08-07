class Payload {
  String stepId;
  String name;
  String detail;
  String stepImage;
  String muscleImage;

  Payload({
    this.stepId = '',
    this.name = '',
    this.detail = '',
    this.stepImage = '',
    this.muscleImage = '',
  });

  factory Payload.fromJson(Map<String, dynamic> json) => Payload(
        stepId: json["step_id"],
        name: json["name"],
        detail: json["detail"],
        stepImage: json["step_image"],
        muscleImage: json["muscle_image"],
      );

  Map<String, dynamic> toJson() => {
        "step_id": stepId,
        "name": name,
        "detail": detail,
        "step_image": stepImage,
        "muscle_image": muscleImage,
      };
}