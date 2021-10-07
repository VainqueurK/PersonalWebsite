import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:static_website/config/statics.dart';
import 'package:static_website/routing/router.dart';
import 'package:static_website/routing/routes.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';
import "package:dev_icons/dev_icons.dart";

class AboutPage extends StatefulWidget {
  final String page;
  const AboutPage({Key? key, this.page = ""}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
                                            "Me",
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
                                              "I am an innovative, hardworking, and pro-active with excellent problem solving, interpersonal and teamwork skills, and experience across IT Disciplines including Web, Application and Mobile Development. I thrive upon challenges and overcoming the unknown.",
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
                            )
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
