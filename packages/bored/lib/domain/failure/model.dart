class BaseFailureModel {
  final String message;
  final String code;

  BaseFailureModel({
    required this.message,
    required this.code,
  });

  factory BaseFailureModel.fromJson(Map<String, dynamic> json) {
    return BaseFailureModel(
      message: json['message'],
      code: json['code'],
    );
  }
}
