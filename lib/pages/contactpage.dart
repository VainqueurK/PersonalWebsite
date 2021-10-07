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
  Color? projectsTextColor = Colors.grey[500];
  Color? normalColor = Colors.grey[500];
  Color? hoverColor = const Color(0xFFFFB52E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Statics.DEVICE_HEIGHT(context) * 3,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: InkWell(
                    onTap: () async {
                      MyRouter.router.navigateTo(context, MyRoutes.homeRoute,
                          transition: TransitionType.cupertino,
                          transitionDuration:
                              const Duration(milliseconds: 750));
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
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey[200],
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: Statics.DEVICE_HEIGHT(context) * .3,
                        width: Statics.DEVICE_WIDTH(context),
                        color: Colors.grey[200],
                        child: const Center(
                          child: Text(
                            "Coming Soon...",
                            style: TextStyle(
                              fontSize: 90,
                              fontFamily: 'Rubik',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
