import 'package:flutter/material.dart';
import 'package:modular_ui/modular_ui.dart';
import 'package:modular_ui_widgetbook/enums/card_variant.dart';

class Cards extends StatelessWidget {
  const Cards({
    super.key,
    required this.title,
    required this.description,
    required this.imgURL,
    required this.buttonText,
    required this.cardVariant,
  });
  final String title;
  final String description;
  final String imgURL;
  final String buttonText;
  final CardVariant cardVariant;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: cardVariant == CardVariant.primaryCard
            ? MUIPrimaryCard(
                title: title,
                onButtonTap: () {},
                description: description,
                image: Image.network(imgURL),
                buttonText: buttonText,
              )
            : cardVariant == CardVariant.signInCard
                ? const Text("Under Development...")
                : cardVariant == CardVariant.simpleCard
                    ? MUISimpleCard(
                        title: title,
                        onButtonTap: () {},
                        description: description,
                        buttonText: buttonText,
                      )
                    : const SizedBox.shrink(),
      ),
    );
  }
}