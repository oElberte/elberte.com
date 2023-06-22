import 'dart:convert';


class SkillsModel {
  final String name;
  final bool enabled;
  
  const SkillsModel({
    required this.name,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'enabled': enabled,
    };
  }

  factory SkillsModel.fromMap(Map<String, dynamic> map) {
    return SkillsModel(
      name: map['name'] ?? '',
      enabled: map['enabled'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory SkillsModel.fromJson(String source) => SkillsModel.fromMap(json.decode(source));
}
