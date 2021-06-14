import 'package:flutter/material.dart';
import 'package:flutterwebapp/routes/navigation_service.dart';
import 'package:flutterwebapp/routes/routes.dart';

import 'drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  NavigationDrawer({@required this.currentRoute});
  final String currentRoute;

  void navigate(String routeName) {
    NavigationService.pop();
    NavigationService.push(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Container(
          //   height: 70,
          //   child: DrawerHeader(
          //     child: IconButton(
          //       isInDrawer: true,
          //     ),
          //   ),
          // ),
          ListTile(
            title: DrawerItem(
              title: "snapChef!",
              isSelected: currentRoute == RouteHome,
            ),
          ),
          ListTile(
              title: DrawerItem(
                title: "Home",
                isSelected: currentRoute == RouteHome,
              ),
              leading: Icon(Icons.home, size: 15),
              onTap: () {
                navigate(RouteHome);
              }),
          ListTile(
              title: DrawerItem(
                title: "Recipe",
                isSelected: currentRoute == RouteRecipe,
              ),
              leading: Icon(Icons.kitchen, size: 15),
              onTap: () {
                navigate(RouteRecipe);
              }),
          ListTile(
              title: DrawerItem(
                title: "Sign In/ Sign Up",
                isSelected: currentRoute == RouteSignIn,
              ),
              leading: Icon(Icons.ondemand_video_sharp, size: 15),
              onTap: () {
                navigate(RouteSignIn);
              }),
          ListTile(
              title: DrawerItem(
                title: "Profile",
                isSelected: currentRoute == RouteProfile,
              ),
              leading: Icon(Icons.verified_user, size: 15),
              onTap: () {
                navigate(RouteProfile);
              }),
        ],
      ),
    );
  }
}
