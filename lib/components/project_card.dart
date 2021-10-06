import 'package:flutter/material.dart';
import 'package:static_website/components/tag_card.dart';
import 'package:static_website/config/statics.dart';
import 'package:static_website/models/project.dart';
import 'package:static_website/models/tags.dart';

class ProjectCard extends StatefulWidget {
  Color fontColor;
  double fontSize;
  double imgWidth;
  double imgHeight;
  String fontFamily;
  Project project;

  ProjectCard({
    Key? key,
    this.fontColor = Colors.black87,
    this.fontFamily = "roboto",
    this.fontSize = 18,
    this.imgHeight = -1,
    this.imgWidth = -1,
    required this.project,
  }) : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  int imgPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Statics.DEVICE_WIDTH(context) * 0.5,
      constraints: const BoxConstraints(minWidth: 800),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: widget.imgWidth == -1
                    ? Statics.DEVICE_WIDTH(context) * 0.14
                    : widget.imgWidth,
                height: widget.imgHeight == -1
                    ? Statics.DEVICE_HEIGHT(context) * 0.5
                    : widget.imgHeight,
                constraints:
                    const BoxConstraints(minHeight: 600, minWidth: 300),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.asset(
                  widget.project.imgs[imgPage],
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                //This is the navigation UI over the image
                width: widget.imgWidth == -1
                    ? Statics.DEVICE_WIDTH(context) * (0.14)
                    : widget.imgWidth,
                height: widget.imgHeight == -1
                    ? Statics.DEVICE_HEIGHT(context) * 0.5
                    : widget.imgHeight,
                constraints:
                    const BoxConstraints(minHeight: 600, minWidth: 300),
                child: Row(
                  children: [
                    InkWell(
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
                        color: Colors.red.withOpacity(0.1),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: Statics.DEVICE_HEIGHT(context) * 0.05,
                            width: Statics.DEVICE_WIDTH(context) * 0.027,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    InkWell(
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
                        color: Colors.green.withOpacity(0.1),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: Statics.DEVICE_HEIGHT(context) * 0.05,
                            width: Statics.DEVICE_WIDTH(context) * 0.027,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
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
              child: Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    Expanded(
                      flex: 1,
                      child: SingleChildScrollView(
                        child: Text(
                          widget.project.desc,
                          style: TextStyle(
                              color: widget.fontColor,
                              fontSize: widget.fontSize,
                              fontFamily: widget.fontFamily,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Statics.DEVICE_HEIGHT(context) * 0.02,
                    ),
                    Row(
                        children: widget.project.tags.tags
                            .map((e) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: TagCard(tag: e),
                                ))
                            .toList()),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
