import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers/html_open.dart';
import '../../../core/ui/size_extensions.dart';
import '../../../core/ui/styles/colors_app.dart';
import '../../../core/ui/styles/text_styles.dart';
import '../../../models/certifications_model.dart';

class CertificatesItem extends StatefulWidget {
  final CertificationsModel certification;

  const CertificatesItem({
    super.key,
    required this.certification,
  });

  @override
  State<CertificatesItem> createState() => _CertificatesItemState();
}

class _CertificatesItemState extends State<CertificatesItem> {
  var isInstitutionHover = false;
  var isNameHover = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: InkWell(
            onTap: () => context.openLink(widget.certification.link),
            onHover: (value) {
              setState(() {
                isNameHover = value;
              });
            },
            child: AutoSizeText(
              widget.certification.name,
              style: context.textStyles.textSemiBold.copyWith(
                color: isNameHover ? context.colors.primary : context.colors.secondary,
                fontSize: 36,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        FittedBox(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              AutoSizeText(
                widget.certification.date.toString(),
                maxLines: 1,
                style: context.textStyles.textSemiBold.copyWith(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Icon(Icons.circle, size: 6, color: Colors.white),
              ),
              InkWell(
                onTap: () => context.openLink(widget.certification.website),
                onHover: (value) {
                  setState(() {
                    isInstitutionHover = value;
                  });
                },
                child: AutoSizeText(
                  widget.certification.institution,
                  style: context.textStyles.textRegular.copyWith(
                    color: isInstitutionHover ? context.colors.primary : Colors.white,
                    fontSize: context.screenWidth < 700 ? 26 : 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
