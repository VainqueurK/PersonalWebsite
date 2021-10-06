import 'package:flutter/material.dart';
import 'package:static_website/pages/aboutpage.dart';
import 'package:static_website/pages/contactpage.dart';
import 'package:static_website/pages/homepage.dart';
import 'package:static_website/pages/projectpage.dart';
import 'package:velocity_x/velocity_x.dart';
import 'components/header.dart';
import 'config/statics.dart';
import 'package:url_strategy/url_strategy.dart';

import 'routing/routes.dart';

void main() {
  setPathUrlStrategy();
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Vainqueur",
      debugShowCheckedModeBanner: false,
      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator(routes: {
        "/": (_, __) => MaterialPage(child: HomePage()),
        MyRoutes.aboutRoute: (_, __) => MaterialPage(child: AboutPage()),
        MyRoutes.projectsRoute: (_, __) => MaterialPage(child: ProjectsPage()),
        MyRoutes.contactRoute: (_, __) => MaterialPage(child: ContactPage()),
      }),
    );
  }
}
