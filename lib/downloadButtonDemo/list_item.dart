import 'package:flutter/material.dart';

@immutable
class ListItem extends StatefulWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('just a tile'),
      subtitle: Text('subtitle'),
      isThreeLine: true,
      onTap: () {
        print('Hello');
      },
    );
  }
}
