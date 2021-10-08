import 'package:flutter/material.dart';
import 'package:static_website/components/project_card.dart';
import 'package:static_website/config/statics.dart';
import 'package:static_website/models/project.dart';
import 'package:static_website/models/tags.dart';

class ProjectSection extends StatefulWidget {
  ProjectSection({Key? key}) : super(key: key);

  @override
  _ProjectSectionState createState() => _ProjectSectionState();
}

class _ProjectSectionState extends State<ProjectSection> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 100),
        width: Statics.DEVICE_WIDTH(context) * 0.6,
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
                  color: Colors.grey[200],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Statics.DEVICE_HEIGHT(context) * 0.075,
                  ),
                  child: ProjectCard(
                    //website example & windows app
                    imgHeight: Statics.DEVICE_HEIGHT(context) * 0.35,
                    imgWidth: Statics.DEVICE_WIDTH(context) * 0.275,
                    hConstraint: 500,
                    wConstraint: 800,
                    project: Project(
                        "Vehicle Speed Detection with an Uncalibrated Camera",
                        "Final year project, a computer vision and machine learning project to try to estimate the speed of oncoming vehicles from a single video without any information on the environment or camera angles and perspective. Using Visual Studio Code as the text editor/IDE.",
                        Tags([
                          "Python",
                          "PyQt5",
                          "YOLOv4",
                          "OpenCV",
                        ]),
                        [
                          Statics.cvProject,
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Statics.DEVICE_HEIGHT(context) * 0.075,
                  ),
                  child: ProjectCard(
                    //research based project example
                    imgHeight: Statics.DEVICE_HEIGHT(context) * 0.35,
                    imgWidth: Statics.DEVICE_WIDTH(context) * 0.275,
                    hConstraint: 500,
                    wConstraint: 800,
                    project: Project(
                        "Web Portfolio",
                        "Personal website to display my skills",
                        Tags([
                          "Flutter",
                          "Dart",
                        ]),
                        [
                          Statics.webHome,
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Statics.DEVICE_HEIGHT(context) * 0.075,
                  ),
                  child: ProjectCard(
                    //research based project example
                    imgHeight: Statics.DEVICE_HEIGHT(context) * 0.35,
                    imgWidth: Statics.DEVICE_WIDTH(context) * 0.275,
                    hConstraint: 500,
                    wConstraint: 800,
                    project: Project(
                        "Heavy Machinery Rental System",
                        "This machinery rental management tool will allow for companies who need a specific machine to easily check for its availability, price, specifications and make a rental for a specific time period.",
                        Tags([
                          "Java",
                          "JavaFX",
                          "JavaxMail",
                        ]),
                        [
                          Statics.mllogin,
                          Statics.mlReg,
                          Statics.mlConsole,
                          Statics.mlAdded,
                          Statics.mlUsers,
                          Statics.mlAddMachine,
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Statics.DEVICE_HEIGHT(context) * 0.075,
                  ),
                  child: ProjectCard(
                    imgWidth: Statics.DEVICE_WIDTH(context) * 0.12,
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
