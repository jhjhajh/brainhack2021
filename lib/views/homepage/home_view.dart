import 'package:flutter/material.dart';
import 'package:flutterwebapp/widgets/footer/footerview.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("homepage"),
        ],
      ),
    );
  }
}
