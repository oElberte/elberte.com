import 'package:flutter/material.dart';

import '../../core/helpers/language_selector.dart';
import '../../core/ui/size_extensions.dart';
import '../../core/ui/styles/text_styles.dart';
import '../../models/certifications_model.dart';
import 'widgets/certificates_item_widget.dart';

class CertificatesSection extends StatelessWidget {
  final List<CertificationsModel> certificates;
  final bool isEnglish;

  const CertificatesSection({
    super.key,
    required this.certificates,
    required this.isEnglish,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: context.percentHeight(.95),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              LanguageSelector.certificates(isEnglish),
              style: context.textStyles.textBold.copyWith(
                color: Colors.white,
                fontSize: 42,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(height: 10),
          Visibility(
            visible: context.screenWidth > 700,
            replacement: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...certificates
                    .map(
                      (c) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: SizedBox(
                          child: CertificatesItem(
                            certification: c,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
            child: SizedBox(
              width: context.screenWidth,
              height: context.percentHeight(.8),
              child: GridView.builder(
                itemCount: certificates.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 120,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  maxCrossAxisExtent: context.screenWidth > 1200 ? context.screenWidth / 2 : context.screenWidth / 1,
                ),
                itemBuilder: (context, index) {
                  return CertificatesItem(
                    certification: certificates[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
