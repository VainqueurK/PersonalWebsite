import 'package:flutter/material.dart';
import 'package:static_website/config/statics.dart';

class Header extends StatefulWidget {
  Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Statics.DEVICE_HEIGHT(context) * 0.075,
      constraints: const BoxConstraints(
        minHeight: 100,
      ),
      width: Statics.DEVICE_WIDTH(context),
      color: Color(0xFF212121),
      child: Row(
        children: [
          SizedBox(
            width: Statics.DEVICE_WIDTH(context) * 0.035,
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              "Vainqueur",
              style: TextStyle(
                  color:
                      Colors.white, //Colors.purple[200], //Color(0xFF83fed1),
                  fontSize: 36,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Expanded(
            flex: 10,
            child: SizedBox(),
          ),
          const FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              "Projects",
              style: TextStyle(
                  color: Colors.white, //Color(0xFFf4e0ff) 7b2cbf
                  fontSize: 20,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: Statics.DEVICE_WIDTH(context) * 0.035,
          ),
          const FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              "About",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: Statics.DEVICE_WIDTH(context) * 0.035,
          ),
          const FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              "Contact",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
