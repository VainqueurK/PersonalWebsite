import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  Color? projectsTextColor = Colors.grey[100];
  Color? normalColor = Colors.grey[100];
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              MyRouter.router.navigateTo(
                                  context, MyRoutes.homeRoute,
                                  transition: TransitionType.cupertino,
                                  transitionDuration:
                                      const Duration(milliseconds: 750));
                            },
                            onHover: (hover) {
                              setState(() {
                                projectsTextColor =
                                    hover ? hoverColor : normalColor;
                              });
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 20,
                                  ),
                                  child: FaIcon(
                                    FontAwesomeIcons.arrowLeft,
                                    size: 20,
                                    color: projectsTextColor,
                                  ),
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 30,
                                    color: projectsTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    ProjectSection(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
