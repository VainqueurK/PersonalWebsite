import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:static_website/components/project_card.dart';
import 'package:static_website/components/project_list.dart';
import 'package:static_website/config/statics.dart';
import 'package:static_website/models/project.dart';
import 'package:static_website/models/tags.dart';
import 'package:static_website/routing/router.dart';
import 'package:static_website/routing/routes.dart';

class ProjectsPage extends StatefulWidget {
  final String page;
  const ProjectsPage({Key? key, this.page = ""}) : super(key: key);

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  Color? projectsTextColor = Colors.grey[500];
  Color? normalColor = Colors.grey[500];
  Color? hoverColor = const Color(0xFFFFB52E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: Statics.DEVICE_HEIGHT(context) * 0.28,
                  width: double.infinity,
                  color: Colors.black,
                  constraints: const BoxConstraints(
                    minHeight: 300,
                  ),
                ),
                Container(
                  height: Statics.DEVICE_HEIGHT(context) * 3,
                  width: double.infinity,
                  //color: Colors.grey[100], //Color(0xFF121212),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: InkWell(
                          onTap: () async {
                            MyRouter.router.navigateTo(
                                context, MyRoutes.homeRoute,
                                transition: TransitionType.inFromBottom,
                                transitionDuration:
                                    const Duration(milliseconds: 750));
                          },
                          onHover: (hover) {
                            setState(() {
                              projectsTextColor =
                                  hover ? hoverColor : normalColor;
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
                      ProjectSection(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
