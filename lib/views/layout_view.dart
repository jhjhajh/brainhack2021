import 'package:flutter/material.dart';
import 'package:flutterwebapp/routes/routes.dart';
import 'package:flutterwebapp/widgets/bottom_navigationbar/bottom_navigation_view.dart';
// import 'package:flutterwebapp/widgets/bottom_navigationbar/bottom_navigation_view.dart';

class LayoutView extends StatelessWidget {
  final Widget child;
  final String route;
  const LayoutView({@required this.child, this.route});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(child: child),
          BottomNavigator(),
        ],
      ),
    );
  }
}
