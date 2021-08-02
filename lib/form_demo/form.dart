import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  String? username;
  String? password;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print('$username & $password');

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    InputBorder Function({required Color color}) generateBorder =
        ({required Color color}) => OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.0,
                color: color,
                style: BorderStyle.solid,
              ),
            );

    InputDecoration Function({required String hintText}) commonDecoration =
        ({required String hintText}) => InputDecoration(
              filled: true,
              fillColor: Colors.white,
              // hintText: hintText,
              border: generateBorder(color: Colors.white),
              enabledBorder: generateBorder(color: Colors.white),
              disabledBorder: generateBorder(color: Colors.yellow),
              errorBorder: generateBorder(color: Colors.red),
              focusedBorder: generateBorder(color: Colors.brown),
              focusedErrorBorder: generateBorder(color: Colors.green),
            );
    return Container(
      color: Colors.brown,
      child: Form(
        key: _formKey,
        // autovalidateMode: AutovalidateMode.,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    onChanged: (value) => this.setState(() {
                      username = value;
                    }),
                    // controller: usernameField,
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Please enter a valid value';
                      print(value);
                      return null;
                    },
                    decoration: commonDecoration(hintText: 'Name'),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    autofocus: true,
                    textInputAction: TextInputAction.next,
                    // focusNode: ,
                    // autofillHints: [AutofillHints.username, AutofillHints.],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    onChanged: (value) => this.setState(() {
                      password = value;
                    }),
                    // controller: passwordField,
                    decoration: commonDecoration(hintText: 'Password'),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Please enter a valid value';
                      print(value);
                      return null;
                    },
                    autofocus: true,
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (value) {
                      _submitForm();
                    },
                    // focusNode: ,
                    // autofillHints: [AutofillHints.username, AutofillHints.],
                  ),
                ],
              ),
            ),
            OutlinedButton(
                onPressed: () {
                  _submitForm();
                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                )
                //   side:
                // ),
                ),
          ],
        ),
      ),
    );
  }
}
