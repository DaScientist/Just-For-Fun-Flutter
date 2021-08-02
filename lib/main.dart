import 'package:flutter/material.dart';
import 'package:just_for_fun_flutter/SnackbarDemo/snackbar_demo.dart';
import 'package:just_for_fun_flutter/firebaseDemo/main.dart';
import 'package:just_for_fun_flutter/form_demo/form.dart';
import 'package:just_for_fun_flutter/general/text_input.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just For Fun Flutter',
      theme: ThemeData(brightness: Brightness.light),
      home: Scaffold(
        body: Center(child: LoginForm()),
      ),
    );
  }
}
