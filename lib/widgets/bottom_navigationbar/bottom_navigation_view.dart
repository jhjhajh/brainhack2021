import 'package:flutter/material.dart';
import 'package:flutterwebapp/routes/navigation_service.dart';
import 'package:flutterwebapp/routes/routes.dart';

class BottomNavigator extends StatelessWidget {
  BottomNavigator({this.currentRoute});
  final String currentRoute;

  void navigate(String routeName) {
    NavigationService.pop();
    NavigationService.push(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        color: Colors.orange,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Stack(
                // fit: StackFit.loose,
                alignment: AlignmentDirectional.center,
                children: [
                  // Positioned.fill(
                  //   child: Icon(
                  //     Icons.videocam,
                  //     size: 50,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  Positioned.fill(
                    top: 8,
                    left: 5,
                    // right: 5,
                    // bottom: 5,
                    child: Icon(
                      Icons.restaurant,
                      color: Colors.white,
                      size: 25,
                    ),
                  )
                ],
              ),
              onPressed: () {
                navigate(RouteHome);
              },
            ),
            // ]
            // ),
            FloatingActionButton(
              backgroundColor: Colors.orange[200],
              child: Icon(Icons.add, color: Colors.white, size: 45),
              onPressed: () {
                navigate(RouteRecipe);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.portrait_rounded,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {
                navigate(RouteProfile);
              },
            ),
          ],
        ),
      )
    ]);
  }
}


  // BottomAppBar(
        //   shape: CircularNotchedRectangle(),
        //   notchMargin: 8.0,
        //   child: Row(
        //     mainAxisSize: MainAxisSize.max,
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: <Widget>[
        //       IconButton(
        //         icon: Icon(
        //           Icons.show_chart,
        //         ),
        //         onPressed: () {},
        //       ),
        //       Stack(children: <Widget>[
        //         FloatingActionButton(
        //           child: Icon(Icons.add),
        //           onPressed: () {},
        //         ),
        //         SizedBox(width: 48.0),
        //       ]),
        //       IconButton(
        //         icon: Icon(
        //           Icons.filter_list,
        //         ),
        //         onPressed: () {},
        //       ),
        //     ],
        //   ),
        // );