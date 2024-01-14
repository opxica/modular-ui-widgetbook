import 'package:flutter/material.dart';
import 'package:modular_ui_widgetbook/components/buttons.dart';
import 'package:modular_ui_widgetbook/components/cards.dart';
import 'package:modular_ui_widgetbook/components/dialogue.dart';
import 'package:modular_ui_widgetbook/components/tabs.dart';
import 'package:modular_ui_widgetbook/enums/card_variant.dart';
import 'package:modular_ui_widgetbook/enums/button_variant.dart';
import 'package:modular_ui_widgetbook/enums/tab_variant.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook/next.dart' as next;

class WidgetBookWrapper extends StatelessWidget {
  const WidgetBookWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: <WidgetbookNode>[
        WidgetbookFolder(
          name: "widgets",
          children: [
            WidgetbookComponent(
              name: "Buttons",
              useCases: <WidgetbookUseCase>[
                WidgetbookUseCase(
                  name: "Gradient Block Level Button",
                  builder: (context) {
                    return Buttons(
                      text: context.knobs.string(
                        label: "Button Text",
                        initialValue: "Button",
                      ),
                      buttonVariant: ButtonVariant.gradientBlockLevelButton,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: "Gradient Button",
                  builder: (context) {
                    return Buttons(
                      text: context.knobs.string(
                        label: "Button Text",
                        initialValue: "Button",
                      ),
                      buttonVariant: ButtonVariant.gradientButton,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: "Loading Block Level Button",
                  builder: (context) {
                    return Buttons(
                      text: context.knobs.string(
                        label: "Button Text",
                        initialValue: "Button",
                      ),
                      buttonVariant: ButtonVariant.loadingBlockLevelButton,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: "Loading Button",
                  builder: (context) {
                    return Buttons(
                      text: context.knobs.string(
                        label: "Button Text",
                        initialValue: "Button",
                      ),
                      buttonVariant: ButtonVariant.loadingButton,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: "Outlined Block Level Button",
                  builder: (context) {
                    return Buttons(
                      text: context.knobs.string(
                        label: "Button Text",
                        initialValue: "Button",
                      ),
                      buttonVariant: ButtonVariant.outlinedBlockLevelButton,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: "Outlined Button",
                  builder: (context) {
                    return Buttons(
                      text: context.knobs.string(
                        label: "Button Text",
                        initialValue: "Button",
                      ),
                      buttonVariant: ButtonVariant.outlinedButton,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: "Primary Block Level Button",
                  builder: (context) {
                    return Buttons(
                      text: context.knobs.string(
                        label: "Button Text",
                        initialValue: "Button",
                      ),
                      buttonVariant: ButtonVariant.primaryBlockLevelButton,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: "Primary Button",
                  builder: (context) {
                    return Buttons(
                      text: context.knobs.string(
                        label: "Button Text",
                        initialValue: "Button",
                      ),
                      buttonVariant: ButtonVariant.primaryButton,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: "Text Block Button",
                  builder: (context) {
                    return Buttons(
                      text: context.knobs.string(
                        label: "Button Text",
                        initialValue: "Button",
                      ),
                      buttonVariant: ButtonVariant.textBlockLevelButton,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: "Text Button",
                  builder: (context) {
                    return Buttons(
                      text: context.knobs.string(
                        label: "Button Text",
                        initialValue: "Button",
                      ),
                      buttonVariant: ButtonVariant.textButton,
                    );
                  },
                ),
              ],
            ),
            WidgetbookComponent(
              name: "Cards",
              useCases: <WidgetbookUseCase>[
                WidgetbookUseCase(
                  name: "Primary Card",
                  builder: (context) {
                    return Cards(
                      title: context.knobs.string(
                          label: "Title", initialValue: 'UI/UX Review Check'),
                      description: context.knobs.string(
                          label: "description",
                          initialValue:
                              'The place is close to Barceloneta Beach and bus stop just 2 min by walk and near to "Naviglio" where you can enjoy the main night life in Barcelona'),
                      buttonText: context.knobs.string(
                          label: "Button Text", initialValue: 'Read more'),
                      imgURL:
                          "https://images.unsplash.com/photo-1540553016722-983e48a2cd10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80",
                      cardVariant: CardVariant.primaryCard,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: "Sign-In Card",
                  builder: (context) {
                    return Cards(
                      title: context.knobs.string(
                          label: "Title", initialValue: 'UI/UX Review Check'),
                      description: context.knobs.string(
                          label: "description",
                          initialValue:
                              'The place is close to Barceloneta Beach and bus stop just 2 min by walk and near to "Naviglio" where you can enjoy the main night life in Barcelona'),
                      buttonText: context.knobs.string(
                          label: "Button Text", initialValue: 'Read more'),
                      imgURL:
                          "https://images.unsplash.com/photo-1540553016722-983e48a2cd10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80",
                      cardVariant: CardVariant.signInCard,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: "Simple Card",
                  builder: (context) {
                    return Cards(
                      title: context.knobs.string(
                          label: "Title", initialValue: 'UI/UX Review Check'),
                      description: context.knobs.string(
                          label: "description",
                          initialValue:
                              'The place is close to Barceloneta Beach and bus stop just 2 min by walk and near to "Naviglio" where you can enjoy the main night life in Barcelona'),
                      buttonText: context.knobs.string(
                          label: "Button Text", initialValue: 'Read more'),
                      imgURL:
                          "https://images.unsplash.com/photo-1540553016722-983e48a2cd10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80",
                      cardVariant: CardVariant.simpleCard,
                    );
                  },
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Tabs',
              useCases: <WidgetbookUseCase>[
                WidgetbookUseCase(
                  name: "Tabs Horizontal",
                  builder: (context) {
                    return Tabs(
                      tabIndexNotifier: ValueNotifier(0),
                      tabVariant: TabVariant.tab,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: "Tabs Vertical",
                  builder: (context) {
                    return Tabs(
                      tabIndexNotifier: ValueNotifier(0),
                      tabVariant: TabVariant.tabVertical,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: "Tabs Transparent",
                  builder: (context) {
                    return Tabs(
                      tabIndexNotifier: ValueNotifier(0),
                      tabVariant: TabVariant.tabTransparent,
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: "Tabs Underline",
                  builder: (context) {
                    return Tabs(
                      tabIndexNotifier: ValueNotifier(0),
                      tabVariant: TabVariant.tabUnderline,
                    );
                  },
                )
              ],
            ),
            WidgetbookComponent(name: "Dialogue", useCases: <WidgetbookUseCase>[
              WidgetbookUseCase(
                  name: "Dialogue",
                  builder: (context) {
                    return Dialogues(
                      diaText: context.knobs
                          .string(label: "Dialog text", initialValue: 'Dialog'),
                      titleHeadText: context.knobs.string(
                          label: "Alert Head Text",
                          initialValue: 'Are you sure want to change this'),
                      allText: context.knobs
                          .string(label: "Alert Text", initialValue: 'ALERT'),
                    );
                  })
            ])
          ],
        ),
      ],
      addons: <WidgetbookAddon>[
        next.MaterialThemeAddon({
          'Light': ThemeData.light(),
          'Dark': ThemeData.dark(),
        }),
      ],
    );
  }
}
