import 'package:flutter/material.dart';
import 'package:flutterwebapp/routes/routes.dart';
import 'package:flutterwebapp/views/startpage/start_view.dart';
import 'package:flutterwebapp/views/homepage/home_view.dart';
import 'package:flutterwebapp/views/layout_view.dart';
import 'package:flutterwebapp/views/profile/profile_view.dart';
import 'package:flutterwebapp/views/recipe/recipe_view.dart';
import 'package:flutterwebapp/views/sign_in/signin_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteHome:
        return _getPageRoute(
            LayoutView(
              child: HomeView(),
              route: RouteHome,
            ),
            settings.name);
        break;
      case RouteProfile:
        return _getPageRoute(
            LayoutView(child: ProfileView(), route: RouteProfile),
            settings.name);
        break;
      case RouteSignIn:
        return _getPageRoute(LayoutView(child: SignInView()), settings.name);
      case RouteRecipe:
        return _getPageRoute(
            LayoutView(child: RecipeView(), route: RouteRecipe), settings.name);
      case RouteStart:
        return _getPageRoute(
            LayoutView(child: StartView(), route: RouteStart), settings.name);
      default:
        return _getPageRoute(LayoutView(child: StartView()), RouteStart);
    }
  }
}

PageRoute _getPageRoute(Widget child, String routeName) {
  return _NoTransitionRoute(child: child, routeName: routeName);
  // if we return MaterialPageRoute(builder: (_) => child) instead, the url wont change as we switch views.
}

class _NoTransitionRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _NoTransitionRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
        );
}
