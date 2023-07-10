class LanguageSelector {
  LanguageSelector._();

  static String myName(bool isEnglish) => isEnglish ? 'Hello! My name is' : 'Olá! Meu nome é';
  static String mobileDev(bool isEnglish) => isEnglish ? 'mobile developer' : 'desenvolvedor mobile';
  static String mobileDev2(bool isEnglish) => isEnglish
      ? 'Mobile application developer with Flutter.'
      : 'Desenvolvedor de aplicações para celular com Flutter.';

  static String at(bool isEnglish) => isEnglish ? ' in' : ' em';
  static String present(bool isEnglish) => isEnglish ? 'Present' : 'Presente';
  static String start(bool isEnglish) => isEnglish ? 'Start' : 'Início';
  static String projects(bool isEnglish) => isEnglish ? 'Projects' : 'Projetos';
  static String skills(bool isEnglish) => isEnglish ? 'Skills' : 'Habilidades';
  static String education(bool isEnglish) => isEnglish ? 'Education' : 'Formação';
  static String certificates(bool isEnglish) => isEnglish ? 'Certificates' : 'Certificados';
  static String seeMore(bool isEnglish) => isEnglish ? 'VIEW MORE' : 'VEJA MAIS';
}
