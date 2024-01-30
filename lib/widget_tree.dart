import 'package:flutter/material.dart';
import 'package:test3/auth.dart';
import 'package:test3/pages/home.dart';
import 'package:test3/pages/login_register.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Homepage();
        } else {
          return LoginPage();
        }
      },
    );
  }
}
