import 'package:flutter/material.dart';
import 'package:flutterwebapp/routes/navigation_service.dart';
import 'package:flutterwebapp/routes/routes.dart';
import 'routes/routegenerator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'snapChef',
      initialRoute: RouteHome,
      navigatorKey: NavigationService.navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Lato')),
      debugShowCheckedModeBanner: false,
    );
  }
}
