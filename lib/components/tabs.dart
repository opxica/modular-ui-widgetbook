import 'package:flutter/material.dart';
import 'package:modular_ui/modular_ui.dart';
import 'package:modular_ui_widgetbook/enums/tab_variant.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    super.key,
    required this.tabIndexNotifier,
    required this.tabVariant,
  });
  final ValueNotifier<int> tabIndexNotifier;
  final TabVariant tabVariant;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ValueListenableBuilder(
        valueListenable: tabIndexNotifier,
        builder: (context, tabIndex, child) {
          if (tabVariant == TabVariant.tab) {
            return MUITabs(
              tabIndex: tabIndex,
              onChanged: (index) {
                tabIndexNotifier.value = index;
              },
              tabs: [
                MUITab(label: "HTML"),
                MUITab(label: "React"),
                MUITab(label: "Vue"),
                MUITab(label: "Angular"),
                MUITab(label: "Svelte"),
              ],
            );
          } else if(tabVariant == TabVariant.tabVertical) {
            return MUITabs(
                axis: Axis.vertical,
                tabIndex: tabIndex,
                onChanged: (index) {
                  tabIndexNotifier.value = index;
                },
                underline: false,
                tabs: [
                  MUITab(label: "HTML"),
                  MUITab(label: "React"),
                  MUITab(label: "Vue"),
                  MUITab(label: "Angular"),
                  MUITab(label: "Svelte"),
                ],
              );
          } else if(tabVariant == TabVariant.tabTransparent) {
            return MUITabs.transparent(
                tabIndex: tabIndex,
                onChanged: (index) {
                  tabIndexNotifier.value = index;
                },
                tabs: [
                  MUITab(label: "HTML"),
                  MUITab(label: "React"),
                  MUITab(label: "Vue"),
                  MUITab(label: "Angular"),
                  MUITab(label: "Svelte"),
                ],
              );
          } else if(tabVariant == TabVariant.tabUnderline) {
            return MUITabs.underlined(
                tabIndex: tabIndex,
                onChanged: (index) {
                  tabIndexNotifier.value = index;
                },
                tabs: [
                  MUITab(label: "HTML"),
                  MUITab(label: "React"),
                  MUITab(label: "Vue"),
                  MUITab(label: "Angular"),
                  MUITab(label: "Svelte"),
                ],
              );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
