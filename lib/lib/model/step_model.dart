class StepModel {
  int? id;
  String? stepId;
  String? name;
  String? detail;
  String? stepImage;
  String? muscleImage;
  String? createdAt;
  String? updatedAt;

  StepModel(
      {this.id,
      this.stepId,
      this.name,
      this.detail,
      this.stepImage,
      this.muscleImage,
      this.createdAt,
      this.updatedAt});

  StepModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    stepId = json['step_id'];
    name = json['name'];
    detail = json['detail'];
    stepImage = json['step_image'];
    muscleImage = json['muscle_image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['step_id'] = this.stepId;
    data['name'] = this.name;
    data['detail'] = this.detail;
    data['step_image'] = this.stepImage;
    data['muscle_image'] = this.muscleImage;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
