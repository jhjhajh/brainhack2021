import 'package:flutter/material.dart';
import 'package:flutterwebapp/routes/navigation_service.dart';
import 'package:flutterwebapp/routes/routes.dart';

class AddRecipeView extends StatelessWidget {
  AddRecipeView({this.currentRoute});
  final String currentRoute;

  void navigate(String routeName) {
    NavigationService.pop();
    NavigationService.push(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(left: 5, top: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // CancelOrPost(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.orange,
                    size: 40,
                  ),
                  onPressed: () {
                    navigate(RouteHome);
                  },
                ),
                PostButton(),
              ],
            ),
            // add picture, title and display placeholder picture and chef name
            // Row(children: [
            //   Expanded(flex: 2, child: Container()),
            //   Expanded(flex: 3, child: Column())
            // ]),
            // Container(),
            // Container(),
            // Row(), //for grabfood icon and the url in grabfood beside it
          ],
        ),
      ),
    );
  }
}

class PostButton extends StatelessWidget {
  PostButton({this.currentRoute});
  final String currentRoute;
  void navigate(String routeName) {
    NavigationService.pop();
    NavigationService.push(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.orange,
            size: 40,
          ),
          onPressed: () {
            navigate(RouteHome);
          },
        ),
        PostButton(),
      ],
    );
  }
}

// class CancelOrPost extends StatelessWidget {
//   void navigate(String routeName) {
//     NavigationService.pop();
//     NavigationService.push(routeName);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         IconButton(
//           icon: Icon(
//             Icons.close,
//             color: Colors.orange,
//             size: 40,
//           ),
//           onPressed: () {
//             navigate(RouteHome);
//           },
//         ),
//         PostButton(),
//       ],
//     );
//   }
// }

// class AddRecipeView extends StatelessWidget {
//   AddRecipeView({this.currentRoute});
//   final String currentRoute;
//   void navigate(String routeName) {
//     NavigationService.pop();
//     NavigationService.push(routeName);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return LayoutView(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Text(
//             'Sign in with Google',
//             style: TextStyle(
//               fontSize: 20,
//               color: Colors.white,
//               fontFamily: "Lato",
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           //cross and post, space between with padding
//           // Row(
//           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           //   children: [
//           //     IconButton(
//           //       icon: Icon(
//           //         Icons.close,
//           //         color: Colors.white,
//           //         size: 40,
//           //       ),
//           //       onPressed: () {
//           //         navigate(RouteHome);
//           //       },
//           //     ),
//           //   ],
//           // ),
//           //add picture, title and display placeholder picture and chef name
//           // Row(children: [Column(), Column()]),
//           // Container(),
//           // Container(),
//           // Row(), //for grabfood icon and the url in grabfood beside it
//           //   ],
//           // ),
//           // ),
//         ],
//       ),
//     );
//   }
// }