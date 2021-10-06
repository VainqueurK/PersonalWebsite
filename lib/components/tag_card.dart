import 'package:flutter/material.dart';
import 'package:static_website/config/statics.dart';

class TagCard extends StatefulWidget {
  String tag;
  TagCard({Key? key, this.tag = ""}) : super(key: key);

  @override
  _TagCardState createState() => _TagCardState();
}

class _TagCardState extends State<TagCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: Statics.DEVICE_WIDTH(context) * 0.05,
          height: Statics.DEVICE_HEIGHT(context) * 0.03,
          constraints: const BoxConstraints(
            minWidth: 90,
            minHeight: 30,
          ),
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(50))),
        ),
        Row(
          children: [
            //add icon of the described text here <-----------------------
            Text(
              widget.tag,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
