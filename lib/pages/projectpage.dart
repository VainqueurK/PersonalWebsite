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
      body: Container(
        height: Statics.DEVICE_HEIGHT(context),
        width: double.infinity,
        color: Colors.grey[100], //Color(0xFF121212),
        child: Column(
          children: [
            SizedBox(
              height: Statics.DEVICE_HEIGHT(context) * 0.015,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: SizedBox(
                width: Statics.DEVICE_WIDTH(context),
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
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(top: 100),
                width: Statics.DEVICE_WIDTH(context) * 0.75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Projects",
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 80,
                      ),
                    ),
                    SizedBox(
                      height: Statics.DEVICE_HEIGHT(context) * 0.05,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
