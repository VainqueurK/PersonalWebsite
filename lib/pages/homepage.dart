import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:static_website/components/project_card.dart';
import 'package:static_website/config/statics.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:static_website/models/tags.dart';
import 'package:static_website/routing/routes.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

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
  Color? downloadTextColor = Colors.grey[800];

  Color? normalColor = Colors.grey[800];
  Color? hoverColor = const Color(0xFFFFB52E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Statics.DEVICE_HEIGHT(context),
        width: double.infinity,
        color: Colors.grey[100], //Color(0xFF121212),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            "Vainqueur",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 200,
                              fontFamily: 'SignitureA',
                              color: Colors.grey[900],
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
                            child: SizedBox(
                                height: Statics.DEVICE_HEIGHT(context) * 0.05,
                                width: Statics.DEVICE_WIDTH(context) * 0.05,
                                child: const Image(
                                  image: AssetImage(
                                      'assets/imgs/GitHub-Emblem.png'),
                                )),
                          ),
                          SizedBox(
                            width: Statics.DEVICE_WIDTH(context) * 0.03,
                          ),
                          InkWell(
                            onTap: () => launch(
                                'https://www.linkedin.com/in/vainqueur/'),
                            child: SizedBox(
                                //linkedIN
                                height: Statics.DEVICE_HEIGHT(context) * 0.05,
                                width: Statics.DEVICE_WIDTH(context) * 0.05,
                                child: const Image(
                                  image: AssetImage(
                                      'assets/imgs/linkedin-logo2.png'),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Statics.DEVICE_HEIGHT(context) * 0.05,
                      ),
                      InkWell(
                        onTap: () {
                          print("Downloading CV");
                          //    ---------------------------------------------- Find a way to download files
                        },
                        onHover: (hover) {
                          setState(() {
                            downloadTextColor =
                                hover ? hoverColor : normalColor;
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
                        await context.vxNav
                            .push(Uri.parse(MyRoutes.aboutRoute));
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
                    height: Statics.DEVICE_HEIGHT(context) * 0.02,
                  ),
                  SizedBox(
                    child: InkWell(
                      onTap: () async {
                        await context.vxNav
                            .push(Uri.parse(MyRoutes.projectsRoute));
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
                    height: Statics.DEVICE_HEIGHT(context) * 0.02,
                  ),
                  SizedBox(
                    child: InkWell(
                      onTap: () async {
                        await context.vxNav
                            .push(Uri.parse(MyRoutes.contactRoute));
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
