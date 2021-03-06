import 'package:flutter/material.dart';
import 'package:static_website/routing/router.dart';
import 'package:url_strategy/url_strategy.dart';

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
  void initState() {
    super.initState();
    MyRouter.setUpRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vainqueur",
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: MyRouter.router.generator,
    );
  }
}
