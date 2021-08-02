import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  const TextInput({Key? key}) : super(key: key);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      width: double.infinity,
      child: Center(
        child: TextField(
          expands: false,
          onTap: () {},
          onChanged: (value) {
            print(value);
          },
          decoration: InputDecoration(fillColor: Colors.red, filled: true),
        ),
      ),
    );
  }
}
