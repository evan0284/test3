import 'package:flutter/material.dart';
import 'package:test3/widget_tree.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //   primarySwatch: Colors.teal,
        // ),
        // home: const WidgetTree());
        home: Container(
      child: const Text('Hello World'),
    ));
  }
}
