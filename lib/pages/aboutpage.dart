import 'package:flutter/material.dart';
import 'package:static_website/config/statics.dart';
import 'package:static_website/routing/routes.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  Color? projectsTextColor = Colors.grey[800];
  Color? normalColor = Colors.grey[800];
  Color? hoverColor = const Color(0xFFFFB52E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Statics.DEVICE_HEIGHT(context),
        width: double.infinity,
        color: Colors.grey[100],
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
                child: Row(
                  children: [
                    //const Icon(FlutterIcons.arrow_left_fea),
                    Text(
                      "< Home",
                      style: TextStyle(
                        fontFamily: 'Rubik',
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
      ),
    );
  }
}
