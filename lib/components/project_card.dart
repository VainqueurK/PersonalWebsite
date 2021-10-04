import 'package:flutter/material.dart';
import 'package:static_website/config/statics.dart';
import 'package:static_website/models/tags.dart';

class ProjectCard extends StatefulWidget {
  Color fontColor;
  double fontSize;
  String fontFamily;
  String text;
  String title;
  Tags tags;
  ProjectCard({
    Key? key,
    this.fontColor = Colors.black87,
    this.fontFamily = "roboto",
    this.fontSize = 24,
    this.title = "N/A",
    this.text = "N/A",
    required this.tags,
  }) : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Statics.DEVICE_WIDTH(context) * 0.5,
      child: Row(
        children: [
          Container(
            width: Statics.DEVICE_WIDTH(context) * 0.14,
            height: Statics.DEVICE_HEIGHT(context) * 0.3,
            constraints: const BoxConstraints(
                maxWidth: 400, maxHeight: 600, minHeight: 300, minWidth: 300),
            decoration: BoxDecoration(
              color: Colors.white,
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
          ),
          SizedBox(
            width: Statics.DEVICE_WIDTH(context) * 0.017,
          ),
          Flexible(
            child: Container(
              height: Statics.DEVICE_HEIGHT(context) * 0.17,
              constraints: BoxConstraints(minHeight: 200, minWidth: 500),
              child: Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.title,
                      overflow: TextOverflow.visible,
                      style: const TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 50,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: SingleChildScrollView(
                        child: Text(
                          widget.text,
                          style: TextStyle(
                              color: widget.fontColor,
                              fontSize: widget.fontSize,
                              fontFamily: widget.fontFamily,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
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
