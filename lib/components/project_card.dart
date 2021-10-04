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
    this.fontColor = Colors.white,
    this.fontFamily = "roboto",
    this.fontSize = 24,
    this.title = "",
    this.text = "",
    required this.tags,
  }) : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Statics.DEVICE_WIDTH(context) * 0.14,
      height: Statics.DEVICE_HEIGHT(context) * 0.3,
      constraints: const BoxConstraints(
          maxWidth: 400, maxHeight: 600, minHeight: 200, minWidth: 300),
      decoration: BoxDecoration(
        color: Color(0xFF2E2E2E),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        widget.text,
        style: TextStyle(
            color: widget.fontColor,
            fontSize: widget.fontSize,
            fontFamily: widget.fontFamily,
            fontWeight: FontWeight.w300),
      ),
    );
  }
}
