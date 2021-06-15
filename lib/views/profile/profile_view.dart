import 'package:flutter/material.dart';
import 'package:flutterwebapp/routes/navigation_service.dart';
import 'package:flutterwebapp/routes/routes.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Container(
    //         height: MediaQuery.of(context).size.height * 0.3,
    //         // padding: EdgeInsets.only(top: 15, bottom: 20),
    //         alignment: Alignment.center,
    //         child: Icon(Icons.portrait),
    //         // child: Image.asset('assets/images/snapchef.png'),
    //       ),
    //       TextIntro(),
    //       SignInButton(),
    //     ],
    //   ),
    // );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // SingleChildScrollView(
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.3, bottom: 10),
            alignment: Alignment.center,
            child: Icon(Icons.portrait, size: 150),
            // child: Image.asset('assets/images/snapchef.png'),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 110, bottom: 10),
            child: Text(
              '<First name>',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.0,
                  fontFamily: "Lato",
                  fontStyle: FontStyle.italic),
            ),
            // child: Image.asset('assets/images/snapchef.png'),
          ),

          SizedBox(height: 20),
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
        'Sign Out of Snapchef',
        style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: "Lato"),
      ),
      onPressed: () {
        NavigationService.push(RouteStart);
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        primary: Colors.orange,
        minimumSize: Size(300, 60),
      ),
    );
  }
}
