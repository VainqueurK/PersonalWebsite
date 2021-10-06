import 'package:flutter/material.dart';
import 'package:static_website/components/project_card.dart';
import 'package:static_website/config/statics.dart';
import 'package:static_website/models/tags.dart';
import 'package:static_website/routing/routes.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  Color? projectsTextColor = Colors.grey[800];
  Color? normalColor = Colors.grey[800];
  Color? hoverColor = const Color(0xFFFFB52E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Statics.DEVICE_HEIGHT(context) * 3,
              width: double.infinity,
              color: Colors.grey[100], //Color(0xFF121212),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: InkWell(
                      onTap: () async {
                        context.vxNav.pop();
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
                          fontSize: 50,
                          color: projectsTextColor,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(top: 100),
                        width: Statics.DEVICE_WIDTH(context) * 0.5,
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Projects",
                                style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 80,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: Statics.DEVICE_HEIGHT(context) * 0.05,
                                ),
                                ProjectCard(
                                  title: "Heavy Machinery Rental System",
                                  text:
                                      "Machinery rental tool that allows companies to easily check for Machine availability, price and specifications",
                                  tags: Tags(["Java", "JavaFX"]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
