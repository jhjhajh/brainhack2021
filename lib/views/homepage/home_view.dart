import 'package:flutter/material.dart';
import 'package:flutterwebapp/routes/navigation_service.dart';
import 'package:flutterwebapp/routes/routes.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.62,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.topCenter,
            child: Image.asset('assets/images/snapchef.png'),
          ),
          TextIntro(),
          SignInButton(),
        ],
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        'Sign in with Google',
        style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: "Lato"),
      ),
      onPressed: () {
        NavigationService.push(RouteSignIn);
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        primary: Colors.orange,
        minimumSize: Size(300, 60),
      ),
    );
  }
}

class TextIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Join the bridgade of snapchefs',
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                height: 0.8,
                fontFamily: "Lato"),
          ),
          Text(
            'Click, and cook!',
            style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                height: 2.0,
                fontFamily: "Lato"),
          ),
        ]);
  }
}
