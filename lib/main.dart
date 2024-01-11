import 'package:flutter/material.dart';
import 'package:modular_ui_widgetbook/widgetbook_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetBookWrapper();
  }
}