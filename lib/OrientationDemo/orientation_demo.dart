import 'package:flutter/material.dart';

class OrientationDemo extends StatelessWidget {
  const OrientationDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientation demo'),
      ),
      body: Container(
        margin: EdgeInsets.zero,
        child: OrientationBuilder(
          builder: (context, orientation) {
            return GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              padding: EdgeInsets.all(4.0),
              children: [
                Container(
                  color: Colors.deepPurple,
                ),
                Container(
                  color: Colors.deepPurple,
                ),
                Container(
                  color: Colors.deepPurple,
                ),
                Container(
                  color: Colors.deepPurple,
                ),
                Container(
                  color: Colors.deepPurple,
                ),
                Container(
                  color: Colors.deepPurple,
                ),
                Container(
                  color: Colors.deepPurple,
                ),
                Container(
                  color: Colors.deepPurple,
                ),
                Container(
                  color: Colors.deepPurple,
                ),
                Container(
                  color: Colors.deepPurple,
                ),
                Container(
                  color: Colors.deepPurple,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
