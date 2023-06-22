import 'dart:convert';


class AboutMeModel {
  final String aboutMe;

  const AboutMeModel({
    required this.aboutMe,
  });

  Map<String, dynamic> toMap() {
    return {
      'about_me': aboutMe,
    };
  }

  factory AboutMeModel.fromMap(Map<String, dynamic> map) {
    return AboutMeModel(
      aboutMe: map['about_me'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AboutMeModel.fromJson(String source) => AboutMeModel.fromMap(json.decode(source));
}
