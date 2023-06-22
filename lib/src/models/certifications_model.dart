import 'dart:convert';

class CertificationsModel {
  final String name;
  final String institution;
  final bool enabled;

  const CertificationsModel({
    required this.name,
    required this.institution,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'institution': institution,
      'enabled': enabled,
    };
  }

  factory CertificationsModel.fromMap(Map<String, dynamic> map) {
    return CertificationsModel(
      name: map['name'] ?? '',
      institution: map['institution'] ?? '',
      enabled: map['enabled'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory CertificationsModel.fromJson(String source) => CertificationsModel.fromMap(json.decode(source));
}
