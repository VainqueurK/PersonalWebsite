import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:static_website/components/tag_card.dart';
import 'package:static_website/config/statics.dart';
import 'package:static_website/models/project.dart';
import 'package:static_website/models/tags.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  Color fontColor;
  double fontSize;
  double imgWidth;
  double imgHeight;
  String fontFamily;
  Project project;
  double hConstraint;
  double wConstraint;
  String link;

  ProjectCard({
    Key? key,
    this.fontColor = Colors.black87,
    this.fontFamily = 'Rubik',
    this.fontSize = 18,
    this.imgHeight = -1,
    this.link = 'https://github.com/VainqueurK',
    this.imgWidth = -1,
    this.hConstraint = 600,
    this.wConstraint = 300,
    required this.project,
  }) : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  int imgPage = 0;
  Color? gitIconTextColor = Colors.black;
  Color? linkedInIconTextColor = Colors.black;

  Color? normalColor2 = Colors.black;
  Color? hoverColor = const Color(0xFFFFA500);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Statics.DEVICE_WIDTH(context) * 0.6,
      constraints: const BoxConstraints(minWidth: 800),
      child: Row(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: Statics.DEVICE_HEIGHT(context) * 0.05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: widget.imgWidth == -1
                            ? Statics.DEVICE_WIDTH(context) * 0.14
                            : widget.imgWidth,
                        height: widget.imgHeight == -1
                            ? Statics.DEVICE_HEIGHT(context) * 0.5
                            : widget.imgHeight,
                        constraints: BoxConstraints(
                            minHeight: widget.hConstraint,
                            minWidth: widget.wConstraint),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 4,
                              blurRadius: 15,
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Image.asset(
                          widget.project.imgs[imgPage],
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Statics.DEVICE_HEIGHT(context) * 0.015,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: InkWell(
                            hoverColor: Colors.transparent,
                            onTap: () => launch(widget.link),
                            onHover: (hover) {
                              setState(() {
                                gitIconTextColor =
                                    hover ? hoverColor : normalColor2;
                              });
                            },
                            child: Container(
                              //height: Statics.DEVICE_HEIGHT(context) * 0.02,

                              child: FittedBox(
                                fit: BoxFit.fitHeight,
                                child: FaIcon(
                                  FontAwesomeIcons.github,
                                  color: gitIconTextColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: Statics.DEVICE_HEIGHT(context) * 0.05,
                ),
                child: Container(
                  //This is the navigation UI over the image
                  width: widget.imgWidth == -1
                      ? Statics.DEVICE_WIDTH(context) * (0.14)
                      : widget.imgWidth,
                  height: widget.imgHeight == -1
                      ? Statics.DEVICE_HEIGHT(context) * 0.5
                      : widget.imgHeight,
                  constraints: BoxConstraints(
                      minHeight: widget.hConstraint,
                      minWidth: widget.wConstraint),
                  child: Row(
                    children: [
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          if (imgPage > 0) {
                            setState(() {
                              imgPage -= 1;
                            });
                          }
                        },
                        child: Container(
                          width: widget.imgWidth == -1
                              ? Statics.DEVICE_WIDTH(context) * (0.14 / 3)
                              : widget.imgWidth / 3,
                          height: widget.imgHeight == -1
                              ? Statics.DEVICE_HEIGHT(context) * 0.5
                              : widget.imgHeight,
                          constraints: const BoxConstraints(
                              minHeight: 600, minWidth: 300 / 3),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: Statics.DEVICE_HEIGHT(context) * 0.05,
                              width: Statics.DEVICE_WIDTH(context) * 0.027,
                              //color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          if (imgPage < widget.project.imgs.length - 1) {
                            setState(() {
                              imgPage += 1;
                            });
                          }
                        },
                        child: Container(
                          width: widget.imgWidth == -1
                              ? Statics.DEVICE_WIDTH(context) * (0.14 / 3)
                              : widget.imgWidth / 3,
                          height: widget.imgHeight == -1
                              ? Statics.DEVICE_HEIGHT(context) * 0.5
                              : widget.imgHeight,
                          constraints: const BoxConstraints(
                              minHeight: 600, minWidth: 300 / 3),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: Statics.DEVICE_HEIGHT(context) * 0.05,
                              width: Statics.DEVICE_WIDTH(context) * 0.027,
                              //color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: Statics.DEVICE_WIDTH(context) * 0.02,
          ),
          Flexible(
            child: Container(
              height: Statics.DEVICE_HEIGHT(context) * 0.3,
              constraints: const BoxConstraints(minHeight: 200, minWidth: 500),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          widget.project.title,
                          overflow: TextOverflow.visible,
                          style: const TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: Statics.DEVICE_HEIGHT(context) * 0.02,
                        ),
                        SingleChildScrollView(
                          child: SelectableText(
                            widget.project.desc,
                            style: TextStyle(
                                color: widget.fontColor,
                                fontSize: widget.fontSize,
                                fontFamily: widget.fontFamily,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        SizedBox(
                          height: Statics.DEVICE_HEIGHT(context) * 0.04,
                        ),
                        Row(
                            children: widget.project.tags.tags
                                .map((e) => Padding(
                                      padding: const EdgeInsets.only(
                                        right: 15,
                                      ),
                                      child: TagCard(tag: e),
                                    ))
                                .toList()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
