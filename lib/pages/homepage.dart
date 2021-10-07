import 'package:fluro/fluro.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:static_website/components/project_card.dart';
import 'package:static_website/config/statics.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:static_website/models/tags.dart';
import 'package:static_website/routing/router.dart';
import 'package:static_website/routing/routes.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class HomePage extends StatefulWidget {
  final String page;
  const HomePage({Key? key, this.page = ""}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double fontsize = 60;
  Duration fontspeed = Duration(milliseconds: 150);
  Color fontcolor = Colors.white;
  String fontfamily = "roboto";

  Color? aboutTextColor = Colors.grey[800];
  Color? projectsTextColor = Colors.grey[800];
  Color? contactTextColor = Colors.grey[800];
  Color? downloadTextColor = Colors.grey[400];

  Color? normalColor = Colors.grey[800];
  Color? normalColor2 = Colors.grey[400];
  Color? hoverColor = const Color(0xFFFFB52E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Statics.DEVICE_HEIGHT(context),
        width: double.infinity,
        color: Colors.black, //Colors.grey[100], //Color(0xFF121212),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(100.0),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            "Vainqueur",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 200,
                              fontFamily: 'SignitureA',
                              color: Colors.grey[400], //Colors.grey[900],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Statics.DEVICE_HEIGHT(context) * 0.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () =>
                                launch('https://github.com/VainqueurK'),
                            child: Container(
                                constraints: const BoxConstraints(
                                    minWidth: 140, minHeight: 100),
                                height: Statics.DEVICE_HEIGHT(context) * 0.05,
                                width: Statics.DEVICE_WIDTH(context) * 0.05,
                                child: Image.asset(
                                  'assets/imgs/GitHub-Emblem.png',
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.fitWidth,
                                )),
                          ),
                          SizedBox(
                            width: Statics.DEVICE_WIDTH(context) * 0.03,
                          ),
                          InkWell(
                            onTap: () => launch(
                                'https://www.linkedin.com/in/vainqueur/'),
                            child: Container(
                                constraints: const BoxConstraints(
                                    minWidth: 140, minHeight: 100),
                                height: Statics.DEVICE_HEIGHT(context) * 0.05,
                                width: Statics.DEVICE_WIDTH(context) * 0.05,
                                child: Image.asset(
                                  'assets/imgs/linkedin-logo2.png',
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.fitWidth,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Statics.DEVICE_HEIGHT(context) * 0.05,
                      ),
                      InkWell(
                        onTap: () => launch(
                            'https://drive.google.com/uc?export=download&id=1UqC8LS93YHQBUrIVyL6p_5zF6L8jttQZ'),
                        onHover: (hover) {
                          setState(() {
                            downloadTextColor =
                                hover ? hoverColor : normalColor2;
                          });
                        },
                        child: Text(
                          "Download Resume/CV",
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 40,
                            color: downloadTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Container(
              height: Statics.DEVICE_HEIGHT(context),
              width: Statics.DEVICE_WIDTH(context) * 0.4,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: InkWell(
                      onTap: () async {
                        MyRouter.router.navigateTo(context, MyRoutes.aboutRoute,
                            transition: TransitionType.cupertino,
                            transitionDuration: const Duration(seconds: 1));
                      },
                      onHover: (hover) {
                        setState(() {
                          aboutTextColor = hover ? hoverColor : normalColor;
                        });
                      },
                      child: Text(
                        "About",
                        style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 50,
                          color: aboutTextColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Statics.DEVICE_HEIGHT(context) * 0.04,
                  ),
                  SizedBox(
                    child: InkWell(
                      onTap: () async {
                        MyRouter.router.navigateTo(
                            context, MyRoutes.projectsRoute,
                            transition: TransitionType.cupertino,
                            transitionDuration: const Duration(seconds: 1));
                      },
                      onHover: (hover) {
                        setState(() {
                          projectsTextColor = hover ? hoverColor : normalColor;
                        });
                      },
                      child: Text(
                        "Projects",
                        style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 50,
                          color: projectsTextColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Statics.DEVICE_HEIGHT(context) * 0.04,
                  ),
                  SizedBox(
                    child: InkWell(
                      onTap: () {
                        MyRouter.router.navigateTo(
                            context, MyRoutes.contactRoute,
                            transition: TransitionType.cupertino,
                            transitionDuration: const Duration(seconds: 1));
                      },
                      onHover: (hover) {
                        setState(() {
                          contactTextColor = hover ? hoverColor : normalColor;
                        });
                      },
                      child: Text(
                        "Contact",
                        style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 50,
                          color: contactTextColor,
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
