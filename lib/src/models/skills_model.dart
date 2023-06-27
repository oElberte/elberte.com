import 'dart:convert';

class SkillsModel {
  final String name;
  final String icon;
  final String iconHovered;
  final bool enabled;
  
  const SkillsModel({
    required this.name,
    required this.icon,
    required this.iconHovered,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'icon': icon,
      'icon_hovered': iconHovered,
      'enabled': enabled,
    };
  }

  factory SkillsModel.fromMap(Map<String, dynamic> map) {
    return SkillsModel(
      name: map['name'] ?? '',
      icon: map['icon'] ?? '',
      iconHovered: map['icon_hovered'] ?? '',
      enabled: map['enabled'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory SkillsModel.fromJson(String source) => SkillsModel.fromMap(json.decode(source));
}
