import 'package:equatable/equatable.dart';

class Bored extends Equatable {
  final String activity;
  final String type;
  final num participants;
  final num price;
  final String link;
  final String key;
  final num accessibility;

  const Bored({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility,
  });

  factory Bored.fromJson(Map<String, dynamic> json) {
    return Bored(
        activity: json['activity'],
        type: json['type'],
        participants: json['participants'],
        price: json['price'],
        link: json['link'],
        key: json['key'],
        accessibility: json['accessibility']);
  }

  Map<String, dynamic> toJson() {
    return {
      'activity': activity,
      'type': type,
      'participants': participants,
      'price': price,
      'link': link,
      'key': key,
      'accessibility': accessibility
    };
  }

  @override
  List<Object?> get props => [
        activity,
        type,
        participants,
        price,
        link,
        key,
        accessibility,
      ];
}
