// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackContainer extends StatefulWidget {
  final String image;
  final String name;
  const StackContainer({super.key, required this.image, required this.name});

  @override
  State<StackContainer> createState() => _StackContainerState();
}

class _StackContainerState extends State<StackContainer> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        if (value) {
          setState(() {
            hovered = true;
          });
        } else {
          setState(() {
            hovered = false;
          });
        }
      },
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Column(
        children: [
          Container(
            // height: hovered ? 100 : 70,
            // width: hovered ? 100 : 70,
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Color.fromRGBO(37, 28, 49, 1),
              borderRadius: BorderRadius.circular(50.0),
            ),
            // duration: Duration(
            //   milliseconds: 100,
            // ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.asset(
                widget.image,
                // height: hovered ? 70 : 48,
                // width: hovered ? 70 : 48,
                fit: BoxFit.contain,
              ),
            ),
          ),
          // if (hovered)
          //   Text(
          //     widget.name,
          //     style: GoogleFonts.robotoMono(
          //       // fontWeight: FontWeight.w600,
          //       fontSize: 20,
          //       color: Colors.white,
          //     ),
          //   ),
        ],
      ),
    );
  }
}
