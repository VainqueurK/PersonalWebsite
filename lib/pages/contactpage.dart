import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:static_website/config/statics.dart';
import 'package:static_website/routing/router.dart';
import 'package:static_website/routing/routes.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class ContactPage extends StatefulWidget {
  final String page;
  const ContactPage({Key? key, this.page = ""}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  Color? projectsTextColor = Colors.grey[800];
  Color? normalColor = Colors.grey[800];
  Color? hoverColor = const Color(0xFFFFB52E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Statics.DEVICE_HEIGHT(context),
        width: double.infinity,
        color: Colors.grey[100],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: InkWell(
                onTap: () {
                  MyRouter.router.navigateTo(context, MyRoutes.homeRoute,
                      transition: TransitionType.inFromBottom,
                      transitionDuration: const Duration(milliseconds: 750));
                },
                onHover: (hover) {
                  setState(() {
                    projectsTextColor = hover ? hoverColor : normalColor;
                  });
                },
                child: Text(
                  "< Home",
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 30,
                    color: projectsTextColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
