library xpress;

import 'package:flutter/material.dart';

void main() {
  runApp(const XPressApp());
}

class XPressApp extends StatelessWidget {
  const XPressApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) {
          return const Center(
            child: Text('XPress Blog'),
          );
        },
        '/blog1': (context) {
          return Center();
        },
        '/login': (context) {
          return Center();
        },
      },
    );
  }
}
