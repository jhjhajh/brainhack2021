import 'package:flutter/material.dart';
import 'package:flutterwebapp/routes/navigation_service.dart';
import 'package:flutterwebapp/routes/routes.dart';

class StartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // SingleChildScrollView(
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            padding: EdgeInsets.only(top: 15, bottom: 20),
            alignment: Alignment.center,
            // child: Icon(Icons.portrait),
            child: Image.asset('assets/images/snapchef.png'),
          ),
          TextIntro(),
          SignInButton(),
          //   ],
          // ),
          // ),
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
            'Join the bridgade of snapchefs\n',
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                height: 1.0,
                fontFamily: "Lato"),
          ),
          Text(
            'Click, and cook!\n',
            style: TextStyle(
                fontSize: 35,
                color: Colors.black,
                height: 1.0,
                fontFamily: "Lato"),
          ),
        ]);
  }
}
