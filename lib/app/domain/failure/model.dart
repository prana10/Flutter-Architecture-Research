class BaseFailure {
  final String message;

  BaseFailure({
    required this.message,
  });

  factory BaseFailure.fromJson(Map<String, dynamic> json) {
    return BaseFailure(
      message: json['message'],
    );
  }
}
