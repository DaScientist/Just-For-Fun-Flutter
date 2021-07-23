import 'package:flutter/material.dart';
import 'package:just_for_fun_flutter/downloadButtonDemo/list_item.dart';

class MainList extends StatelessWidget {
  const MainList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return ListItem();
        },
      ),
    );
  }
}
