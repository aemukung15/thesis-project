class StepModel {
  int? id;
  String? stepId;
  String? name;
  String? detail;
  String? stepType;
  String? stepImage;
  String? muscleImage;
  String? createdAt;
  String? updatedAt;

  StepModel(
      {this.id,
      this.stepId,
      this.name,
      this.detail,
      this.stepType,
      this.stepImage,
      this.muscleImage,
      this.createdAt,
      this.updatedAt});

  StepModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    stepId = json['step_id'];
    name = json['name'];
    detail = json['detail'];
    stepType = json['step_type'];
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
    data['step_type'] = this.stepType;
    data['step_image'] = this.stepImage;
    data['muscle_image'] = this.muscleImage;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class CountStepModel {
  String? stepType;
  int? count;

  CountStepModel({this.stepType, this.count});

  CountStepModel.fromJson(Map<String, dynamic> json) {
    stepType = json['step_type'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['step_type'] = this.stepType;
    data['count'] = this.count;
    return data;
  }
}
