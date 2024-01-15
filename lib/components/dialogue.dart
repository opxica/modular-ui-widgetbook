import 'package:flutter/material.dart';
import 'package:modular_ui/modular_ui.dart';
// import 'package:modular_ui_widgetbook/enums/dialog.dart';

class Dialogues extends StatelessWidget {
  const Dialogues({
    super.key,
    required this.diaText,
    required this.titleHeadText,
    required this.allText,
  });
  final String diaText;
  final String titleHeadText;
  final String allText;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: MUIPrimaryDialog(
      buttonBackgroundColor: Colors.white,
      buttonRadius: 5,
      buttonBorderWidth: 1,
      buttonBorderColor: Colors.black,
      ctaText: diaText,
      titleText: titleHeadText,
      contentText: allText,
      primaryCta: "Continue",
      primaryOnTap: () => Navigator.pop(context),
      secondaryonTap: () => Navigator.pop(context),
      secondaryCta: "Cancel",
    ));
  }
}
