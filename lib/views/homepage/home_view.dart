import 'package:flutter/material.dart';
import 'package:flutterwebapp/widgets/bottom_navigationbar/bottom_navigation_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.50,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.topCenter,
            child: Image.asset('assets/images/snapchef.png'),
          ),
          // BottomNavigator(),
        ],
      ),
    );
  }
}
