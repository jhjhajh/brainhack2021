import 'package:flutter/material.dart';
import 'package:flutterwebapp/widgets/navigation_bar/navigation_drawer.dart';
// import 'package:flutterwebapp/widgets/navigation_bar/navigation_drawer.dart';

class LayoutView extends StatelessWidget {
  final Widget child;
  final String route;
  const LayoutView({@required this.child, this.route});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: new Text('Click and Cook!')),
        drawer: NavigationDrawer(
          currentRoute: route,
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[Expanded(child: child)],
        ));
  }
}
