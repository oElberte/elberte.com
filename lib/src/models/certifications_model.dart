import 'dart:convert';

class CertificationsModel {
  final String name;
  final String institution;
  final int date;
  final String link;
  final String website;
  final bool enabled;

  const CertificationsModel({
    required this.name,
    required this.institution,
    required this.date,
    required this.link,
    required this.website,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'institution': institution,
      'date': date,
      'link': link,
      'website': website,
      'enabled': enabled,
    };
  }

  factory CertificationsModel.fromMap(Map<String, dynamic> map) {
    return CertificationsModel(
      name: map['name'] ?? '',
      institution: map['institution'] ?? '',
      date: map['date']?.toInt() ?? 0,
      link: map['link'] ?? '',
      website: map['website'] ?? '',
      enabled: map['enabled'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory CertificationsModel.fromJson(String source) => CertificationsModel.fromMap(json.decode(source));
}
