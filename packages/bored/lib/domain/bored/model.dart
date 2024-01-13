class Bored {
  final String activity;

  Bored({
    required this.activity,
  });

  factory Bored.fromJson(Map<String, dynamic> json) {
    return Bored(
      activity: json['activity'],
    );
  }
}
