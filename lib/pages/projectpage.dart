// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:static_website/components/project_card.dart';
import 'package:static_website/config/statics.dart';
import 'package:static_website/models/tags.dart';
import 'package:static_website/routing/routes.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class ProjectsPage extends StatefulWidget {
  ProjectsPage({Key? key}) : super(key: key);

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Color? projectsTextColor = Colors.grey[800];
  Color? normalColor = Colors.grey[800];
  Color? hoverColor = const Color(0xFFFFB52E);

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
                  SizedBox(
                    height: Statics.DEVICE_HEIGHT(context) * 0.015,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: InkWell(
                      onTap: () async {
                        await context.vxNav.push(Uri.parse("/"));
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
                            Align(
                              alignment: Alignment.centerLeft,
                              child: const Text(
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
                                      "Machinery rental management tool that allows companies to easily check for Machine availability, price, specifications and make a rental for a specific period. Applied design patterns, documentation, testing, implementation, and version control usage.",
                                  tags: Tags(),
                                ),
                                SizedBox(
                                  height: Statics.DEVICE_HEIGHT(context) * 0.05,
                                ),
                                ProjectCard(
                                  title:
                                      "Vehicle Speed Detection with an Uncalibrated Camera",
                                  text:
                                      "Final year project, a computer vision and machine learning project to try to estimate the speed of incoming vehicles from a single video without any information on the environment or camera angles and perspective. Performing special calculations frame by frame on video inputs.",
                                  tags: Tags(),
                                ),
                                SizedBox(
                                  height: Statics.DEVICE_HEIGHT(context) * 0.05,
                                ),
                                ProjectCard(
                                  title:
                                      "Fakebook: Android Social Media Clone ",
                                  text:
                                      "Fakebook is a social media application that was written using java and is compatible with android versions 5 and above. The app offers an integrated messaging system where users can communicate with their friends and anybody that they have connected with on the app. The app uses Firebase to store user details along with messages by that user.",
                                  tags: Tags(),
                                ),
                                SizedBox(
                                  height: Statics.DEVICE_HEIGHT(context) * 0.05,
                                ),
                                ProjectCard(
                                  title: "Supermarket Simulator",
                                  text:
                                      "Simulates a user selected day in a virtual supermarket under chosen weather conditions. An application for the purpose of applied learning of concurrency and threads using goroutines.",
                                  tags: Tags(),
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
