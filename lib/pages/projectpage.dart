import 'package:flutter/material.dart';
import 'package:static_website/components/project_card.dart';
import 'package:static_website/config/statics.dart';
import 'package:static_website/models/project.dart';
import 'package:static_website/models/tags.dart';
import 'package:static_website/routing/routes.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

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
                  constraints: BoxConstraints(
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
                            context.vxNav.pop();
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
                      Center(
                        child: Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.only(top: 100),
                            width: Statics.DEVICE_WIDTH(context) * 0.5,
                            constraints: const BoxConstraints(minWidth: 800),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Projects",
                                    style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontSize: 80,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height:
                                          Statics.DEVICE_HEIGHT(context) * 0.05,
                                    ),
                                    ProjectCard(
                                      imgWidth:
                                          Statics.DEVICE_WIDTH(context) * 0.12,
                                      project: Project(
                                          "FakeBook: Social Media App",
                                          "Fakebook is a social media application that was written using java and is compatible with android versions 5 and above. The app offers an integrated messaging system where users can communicate with their friends and anybody that they have connected with on the app. The app also has a modern and slick orange colour scheme and allows for a variety of customization options of your personal profile. The app uses Firebase in order to store user details along with messages by that user.",
                                          Tags(["Java", "JavaFX"]), [
                                        Statics.fakebook1,
                                        Statics.fakebook2,
                                        Statics.fakebook3,
                                        Statics.fakebook4,
                                        Statics.fakebook5,
                                        Statics.fakebook6,
                                        Statics.fakebook8
                                      ]),
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
          ],
        ),
      ),
    );
  }
}
