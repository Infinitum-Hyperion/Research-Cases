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
          return Material(
            child: Center(
              child: Column(
                children: [
                  const Text('XPress Blog'),
                  const SizedBox(height: 20),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                      child: const Text('Login')),
                ],
              ),
            ),
          );
        },
        '/public-page': (context) {
          return Center();
        },
        '/member-only-page': (context) {
          return Center();
        },
        '/login': (context) {
          return Material(
            child: Center(
              child: Container(
                width: 400,
                height: 700,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      },
    );
  }
}
