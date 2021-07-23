import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar Demo'),
      ),
      body: Container(
        color: Colors.deepPurple,
        child: Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color?>(Colors.deepPurple[300]),
            ),
            child: Text('Press to open a snackbar'),
            onPressed: () {
              final snackbar = SnackBar(
                content: Text('This a demo Snackbar'),
                action: SnackBarAction(
                  label: 'Press',
                  onPressed: () {
                    //Some things
                    print('Press the Action');
                  },
                ),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
          ),
        ),
      ),
    );
  }
}
