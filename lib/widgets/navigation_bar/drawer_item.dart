import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isSelected;

  const DrawerItem({@required this.title, @required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 15,
          color: Colors.teal,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
    );
  }
}
