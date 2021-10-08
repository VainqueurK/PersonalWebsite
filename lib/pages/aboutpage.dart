import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:static_website/config/statics.dart';
import 'package:static_website/routing/router.dart';
import 'package:static_website/routing/routes.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';
import "package:dev_icons/dev_icons.dart";
import 'dart:math' as math;

class AboutPage extends StatefulWidget {
  final String page;
  const AboutPage({Key? key, this.page = ""}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  Color? projectsTextColor = Colors.grey[500];
  Color? normalColor = Colors.grey[500];
  Color? hoverColor = const Color(0xFFFFA500);

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
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey[200],
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: Statics.DEVICE_WIDTH(context),
                        height: Statics.DEVICE_HEIGHT(context) * 0.025,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: Statics.DEVICE_HEIGHT(context) * 0.04,
                        ),
                        child: Container(
                          //height: Statics.DEVICE_HEIGHT(context) * 0.2,
                          width: Statics.DEVICE_WIDTH(context) * 0.6,
                          color: Colors.grey[200],
                          child: Row(
                            children: [
                              Text(
                                "About",
                                style: TextStyle(
                                  fontSize: 55,
                                  fontFamily: 'Rubik',
                                  color: Colors.grey[900],
                                ),
                              ),
                              SizedBox(
                                width: Statics.DEVICE_WIDTH(context) * 0.02,
                              ),
                              Text(
                                "Vainqueur Kayombo",
                                style: TextStyle(
                                  fontSize: 78,
                                  fontFamily: 'SignitureA',
                                  color: Colors.grey[900],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: Statics.DEVICE_WIDTH(context) * 0.6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    //color: Colors.red,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: SelectableText(
                                            "Why should you pick me?",
                                            style: TextStyle(
                                              fontSize: 28,
                                              fontFamily: 'Rubik',
                                              color: Colors.amber[900],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height:
                                              Statics.DEVICE_HEIGHT(context) *
                                                  0.02,
                                        ),
                                        Container(
                                          child: const SelectableText(
                                            "With a bachelor’s degree in Computer Systems and hands-on experience creating and implementing projects in Dart, Java, and Python, I am confident I will be an asset to your organization. I have industry experience in the planning, designing and requirements engineering required for a successful software product.",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Rubik',
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height:
                                              Statics.DEVICE_HEIGHT(context) *
                                                  0.03,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  flex: 1,
                                  child: SizedBox(),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    //color: Colors.blue,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: SelectableText(
                                            "My qualties",
                                            style: TextStyle(
                                              fontSize: 28,
                                              fontFamily: 'Rubik',
                                              color: Colors.amber[900],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height:
                                              Statics.DEVICE_HEIGHT(context) *
                                                  0.02,
                                        ),
                                        Container(
                                          child: const Align(
                                            alignment: Alignment.centerLeft,
                                            child: SelectableText(
                                              "I am an innovative, hardworking, and pro-active individual with excellent problem solving skills. I thrive upon challenges and overcoming the unknown, and most importantly, I'm always willing to learn.",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Rubik',
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height:
                                              Statics.DEVICE_HEIGHT(context) *
                                                  0.03,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Statics.DEVICE_HEIGHT(context) * 0.05,
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: SelectableText(
                                  "Technologies I use",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'Rubik',
                                    color: Colors.amber[900],
                                  ),
                                ),
                              ),
                            ),
                            Wrap(
                              alignment: WrapAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 20,
                                  ),
                                  child: FaIcon(
                                    FontAwesomeIcons.java,
                                    size: 80,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 20,
                                  ),
                                  child: FaIcon(
                                    FontAwesomeIcons.python,
                                    size: 80,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 20,
                                  ),
                                  child: Icon(
                                    DevIcons.dartPlain,
                                    size: 80,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 20,
                                  ),
                                  child: Icon(
                                    DevIcons.goPlain,
                                    size: 80,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 20,
                                  ),
                                  child: Icon(
                                    DevIcons.firebasePlain,
                                    size: 80,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 20,
                                  ),
                                  child: Icon(
                                    DevIcons.reactOriginal,
                                    size: 80,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 20,
                                  ),
                                  child: Icon(
                                    DevIcons.flutterPlain,
                                    size: 80,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 20,
                                  ),
                                  child: Icon(
                                    DevIcons.androidPlain,
                                    size: 80,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Statics.DEVICE_HEIGHT(context) * 0.07,
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: SelectableText(
                                      "My Timeline",
                                      style: TextStyle(
                                        fontSize: 55,
                                        fontFamily: 'Rubik',
                                        color: Colors.grey[900],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Statics.DEVICE_HEIGHT(context) * 0.05,
                            ),
                            Container(
                              width: Statics.DEVICE_WIDTH(context),
                              height: Statics.DEVICE_HEIGHT(context),
                              child: Row(
                                //LEFT SIDE OF TIMELINE
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: Statics.DEVICE_HEIGHT(context) *
                                            0.01,
                                      ),
                                      Container(
                                        width:
                                            Statics.DEVICE_WIDTH(context) * 0.1,
                                        height: Statics.DEVICE_HEIGHT(context) *
                                            0.25,
                                        //color: Colors.white,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: SelectableText(
                                                "Limerick, IE",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Rubik',
                                                  color: Colors.grey[900],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Statics.DEVICE_HEIGHT(
                                                      context) *
                                                  0.01,
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: SelectableText(
                                                "University of Limerick",
                                                style: TextStyle(
                                                  fontSize: 28,
                                                  fontFamily: 'Rubik',
                                                  color: Colors.amber[900],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Statics.DEVICE_HEIGHT(
                                                      context) *
                                                  0.01,
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: SelectableText(
                                                "BSc Hons. Computer Science (Common Entry)",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'Rubik',
                                                  color: Colors.grey[900],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: Statics.DEVICE_HEIGHT(context) *
                                            0.01,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          right: Statics.DEVICE_WIDTH(context) *
                                              0.005,
                                        ),
                                        width:
                                            Statics.DEVICE_WIDTH(context) * 0.1,
                                        height: Statics.DEVICE_HEIGHT(context) *
                                            0.25,
                                        //color: Colors.white,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: SelectableText(
                                                "Limerick, IE",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Rubik',
                                                  color: Colors.grey[900],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Statics.DEVICE_HEIGHT(
                                                      context) *
                                                  0.01,
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: SelectableText(
                                                "Cook Medical",
                                                style: TextStyle(
                                                  fontSize: 28,
                                                  fontFamily: 'Rubik',
                                                  color: Colors.amber[900],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Statics.DEVICE_HEIGHT(
                                                      context) *
                                                  0.01,
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: SelectableText(
                                                ".NET Web Developer And IT Administrator - Placement",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'Rubik',
                                                  color: Colors.grey[900],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: Statics.DEVICE_HEIGHT(context) *
                                            0.01,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          right: Statics.DEVICE_WIDTH(context) *
                                              0.005,
                                        ),
                                        width:
                                            Statics.DEVICE_WIDTH(context) * 0.1,
                                        height: Statics.DEVICE_HEIGHT(context) *
                                            0.25,
                                        //color: Colors.white,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: SelectableText(
                                                "Limerick, IE",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Rubik',
                                                  color: Colors.grey[900],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Statics.DEVICE_HEIGHT(
                                                      context) *
                                                  0.01,
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: SelectableText(
                                                "University of Limerick",
                                                style: TextStyle(
                                                  fontSize: 28,
                                                  fontFamily: 'Rubik',
                                                  color: Colors.amber[900],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Statics.DEVICE_HEIGHT(
                                                      context) *
                                                  0.01,
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: SelectableText(
                                                "BSc Hons. Computer Systems",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'Rubik',
                                                  color: Colors.grey[900],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: Statics.DEVICE_HEIGHT(context) *
                                            0.01,
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    //ALL THE UI NODES ON TIMELINE
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          width: 7,
                                          height:
                                              Statics.DEVICE_HEIGHT(context) *
                                                  0.8,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey[900],
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height:
                                                Statics.DEVICE_HEIGHT(context) *
                                                    0.127,
                                          ),
                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Transform.rotate(
                                                angle: -math.pi / 4,
                                                child: Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.rectangle,
                                                    color: Colors.grey[900],
                                                  ),
                                                ),
                                              ),
                                              Transform.rotate(
                                                angle: -math.pi / 4,
                                                child: Container(
                                                  height: 12.5,
                                                  width: 12.5,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.rectangle,
                                                    color: Colors
                                                        .white, //Colors.amber[900],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height:
                                                Statics.DEVICE_HEIGHT(context) *
                                                    0.25,
                                          ),
                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Transform.rotate(
                                                angle: -math.pi / 4,
                                                child: Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.rectangle,
                                                    color: Colors.grey[900],
                                                  ),
                                                ),
                                              ),
                                              Transform.rotate(
                                                angle: -math.pi / 4,
                                                child: Container(
                                                  height: 12.5,
                                                  width: 12.5,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.rectangle,
                                                    color: Colors
                                                        .white, //Colors.amber[900],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height:
                                                Statics.DEVICE_HEIGHT(context) *
                                                    0.25,
                                          ),
                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Transform.rotate(
                                                angle: -math.pi / 4,
                                                child: Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.rectangle,
                                                    color: Colors.grey[900],
                                                  ),
                                                ),
                                              ),
                                              Transform.rotate(
                                                angle: -math.pi / 4,
                                                child: Container(
                                                  height: 12.5,
                                                  width: 12.5,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.rectangle,
                                                    color: Colors
                                                        .white, //Colors.amber[900],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: Statics.DEVICE_HEIGHT(context) *
                                            0.01,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: Statics.DEVICE_WIDTH(context) *
                                              0.08,
                                        ),
                                        width: Statics.DEVICE_WIDTH(context) *
                                            0.25,
                                        height: Statics.DEVICE_HEIGHT(context) *
                                            0.25,
                                        //color: Colors.white,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: SelectableText(
                                                "Started College",
                                                style: TextStyle(
                                                  fontSize: 45,
                                                  fontFamily: 'Rubik',
                                                  color: Colors.grey[
                                                      900], //Colors.amber[900],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Statics.DEVICE_HEIGHT(
                                                      context) *
                                                  0.01,
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: SelectableText(
                                                "Sep. 2017",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'Rubik',
                                                  color: Colors.grey[900],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: Statics.DEVICE_HEIGHT(context) *
                                            0.01,
                                      ),
                                      SizedBox(
                                        height: Statics.DEVICE_HEIGHT(context) *
                                            0.01,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: Statics.DEVICE_WIDTH(context) *
                                              0.08,
                                        ),
                                        width: Statics.DEVICE_WIDTH(context) *
                                            0.25,
                                        height: Statics.DEVICE_HEIGHT(context) *
                                            0.25,
                                        //color: Colors.white,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: SelectableText(
                                                "Started Work Placement",
                                                style: TextStyle(
                                                  fontSize: 45,
                                                  fontFamily: 'Rubik',
                                                  color: Colors.grey[
                                                      900], //Colors.amber[900],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Statics.DEVICE_HEIGHT(
                                                      context) *
                                                  0.01,
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: SelectableText(
                                                "Jun. 2019",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'Rubik',
                                                  color: Colors.grey[900],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: Statics.DEVICE_HEIGHT(context) *
                                            0.01,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: Statics.DEVICE_WIDTH(context) *
                                              0.08,
                                        ),
                                        width: Statics.DEVICE_WIDTH(context) *
                                            0.25,
                                        height: Statics.DEVICE_HEIGHT(context) *
                                            0.25,
                                        //color: Colors.white,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: SelectableText(
                                                "Graduated from College",
                                                style: TextStyle(
                                                  fontSize: 45,
                                                  fontFamily: 'Rubik',
                                                  color: Colors.grey[
                                                      900], //Colors.amber[900],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: Statics.DEVICE_HEIGHT(
                                                      context) *
                                                  0.01,
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: SelectableText(
                                                "May. 2021",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'Rubik',
                                                  color: Colors.grey[900],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: Statics.DEVICE_HEIGHT(context) *
                                            0.01,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
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
