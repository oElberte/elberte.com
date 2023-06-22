import 'dart:convert';

class EducationModel {
  final String type;
  final String name;
  final String university;
  final int startDate;
  final int? endDate;
  final bool present;
  final bool enabled;

  const EducationModel({
    required this.type,
    required this.name,
    required this.university,
    required this.startDate,
    this.endDate,
    required this.present,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'name': name,
      'university': university,
      'start_date': startDate,
      'end_date': endDate,
      'present': present,
      'enabled': enabled,
    };
  }

  factory EducationModel.fromMap(Map<String, dynamic> map) {
    return EducationModel(
      type: map['type'] ?? '',
      name: map['name'] ?? '',
      university: map['university'] ?? '',
      startDate: map['start_date']?.toInt() ?? 0,
      endDate: map['end_date']?.toInt(),
      present: map['present'] ?? false,
      enabled: map['enabled'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory EducationModel.fromJson(String source) => EducationModel.fromMap(json.decode(source));
}
