import 'package:flutter/material.dart';

class FirebaseApp extends StatelessWidget {
  const FirebaseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just For Fun Flutter',
      theme: ThemeData(brightness: Brightness.dark),
      home: Container(
        color: Colors.red,
      ),
    );
  }
}
