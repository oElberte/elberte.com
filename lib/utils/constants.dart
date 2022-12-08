import 'package:flutter/material.dart';

const Color kPrimaryColor = Color.fromRGBO(224, 64, 251, 1);
const Color kSecondaryColor = Color.fromRGBO(234, 128, 252, 1);
const Color kBackgroundColor = Color.fromARGB(236, 20, 22, 22);
const Color kDangerColor = Color.fromRGBO(249, 77, 30, 1);
const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);

const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;

const String kWhatsAppLink = 'wa.me/5534991355629';
const String kLinkedinLink = 'www.linkedin.com/in/oElberte/';
const String kGithubLink = 'www.github.com/oElberte';
const String kMailTo = 'mailto:contato@elberte.com';

const String kEmail = 'contato@elberte.com';
const String kNumber = '+55 34 99135-5629';
