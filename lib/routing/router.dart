// ignore_for_file: prefer_final_fields

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:static_website/pages/aboutpage.dart';
import 'package:static_website/pages/contactpage.dart';
import 'package:static_website/pages/homepage.dart';
import 'package:static_website/pages/projectpage.dart';
import 'package:static_website/routing/routes.dart';

class MyRouter {
  static final FluroRouter router = FluroRouter();

  static Handler _mainHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          HomePage());

  static Handler _aboutHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          AboutPage());

  static Handler _projectsHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          ProjectsPage());

  static Handler _contactHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          ContactPage());

  static void setUpRouter() {
    router.define(
      '/',
      handler: _mainHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      MyRoutes.aboutRoute,
      handler: _aboutHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      MyRoutes.projectsRoute,
      handler: _projectsHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      MyRoutes.contactRoute,
      handler: _contactHandler,
      transitionType: TransitionType.fadeIn,
    );
  }
}
