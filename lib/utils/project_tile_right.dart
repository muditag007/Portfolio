// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectTileRight extends StatelessWidget {
  const ProjectTileRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 250,
            // width: 00,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        SizedBox(width: 30,),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "BUDGY",
                  style: GoogleFonts.robotoMono(
                    fontWeight: FontWeight.w600,
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Google Fonts is a computer font and web font service owned by Google. This includes free and open source font families, an interactive web directory for browsing the library, and APIs for using the fonts via CSS and Android.",
                style: GoogleFonts.robotoMono(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
