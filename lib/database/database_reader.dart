import '../src/models/apps_model.dart';
import '../src/models/certifications_model.dart';
import '../src/models/education_model.dart';
import '../src/models/skills_model.dart';
import 'database_en.dart';
import 'database_pt.dart';

class DatabaseReader {
  final bool isEnglish;

  DatabaseReader(this.isEnglish);

  List<AppsModel> apps() {
    if (!isEnglish) {
      return DatabasePt.apps
          .map<AppsModel>(
            (a) => AppsModel.fromMap(a),
          )
          .toList();
    } else {
      return DatabaseEn.apps
          .map<AppsModel>(
            (a) => AppsModel.fromMap(a),
          )
          .toList();
    }
  }

  List<SkillsModel> skills() {
    if (!isEnglish) {
      return DatabasePt.skills
          .map<SkillsModel>(
            (s) => SkillsModel.fromMap(s),
          )
          .toList();
    } else {
      return DatabaseEn.skills
          .map<SkillsModel>(
            (s) => SkillsModel.fromMap(s),
          )
          .toList();
    }
  }

  List<EducationModel> education() {
    if (!isEnglish) {
      return DatabasePt.education
          .map<EducationModel>(
            (e) => EducationModel.fromMap(e),
          )
          .toList();
    } else {
      return DatabaseEn.education
          .map<EducationModel>(
            (e) => EducationModel.fromMap(e),
          )
          .toList();
    }
  }

  List<CertificationsModel> certifications() {
    if (!isEnglish) {
      return DatabasePt.certifications
          .map<CertificationsModel>(
            (e) => CertificationsModel.fromMap(e),
          )
          .toList();
    } else {
      return DatabasePt.certifications
          .map<CertificationsModel>(
            (e) => CertificationsModel.fromMap(e),
          )
          .toList();
    }
  }
}
