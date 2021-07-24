import 'package:flutter/material.dart';
import 'package:just_for_fun_flutter/SnackbarDemo/snackbar_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just For Fun Flutter',
      theme: ThemeData(brightness: Brightness.dark),
      home: SnackBarDemo(),
    );
  }
}
