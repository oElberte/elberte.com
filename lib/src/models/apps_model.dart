import 'dart:convert';


class AppsModel {
  final String appType;
  final String name;
  final String description;
  final List<String> images;
  final String? link;
  final bool enabled;
  
  const AppsModel({
    required this.appType,
    required this.name,
    required this.description,
    required this.images,
    this.link,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return {
      'app_type': appType,
      'name': name,
      'description': description,
      'images': images,
      'link': link,
      'enabled': enabled,
    };
  }

  factory AppsModel.fromMap(Map<String, dynamic> map) {
    return AppsModel(
      appType: map['app_type'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      images: List<String>.from(map['images']),
      link: map['link'],
      enabled: map['enabled'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AppsModel.fromJson(String source) => AppsModel.fromMap(json.decode(source));
}
