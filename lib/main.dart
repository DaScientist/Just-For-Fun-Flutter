import 'package:flutter/material.dart';
import 'package:just_for_fun_flutter/downloadButtonDemo/main_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just For Fun Flutter',
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Download button demo'),
          centerTitle: true,
        ),
        body: MainList(),
      ),
    );
  }
}
