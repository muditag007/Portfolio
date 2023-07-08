// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/project_tile.dart';
import 'package:portfolio/utils/project_tile_right.dart';
import 'package:portfolio/utils/stack_container.dart';
import 'package:rive/rive.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(17, 7, 31, 1),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 1000,
                width: width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                ),
                child: RiveAnimation.asset(
                  "rive.riv",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.only(
                  left: width / 20,
                  right: width / 20,
                  bottom: 20,
                  top: height / 6,
                ),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.network(
                            "https://avatars.githubusercontent.com/u/90468056?v=4",
                            // subject['images']['large'],
                            height: 200.0,
                            width: 200.0,
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "I'm ",
                                  style: GoogleFonts.robotoMono(
                                    fontSize: 60,
                                  ),
                                ),
                                Text(
                                  "Mudit Agrawal",
                                  style: GoogleFonts.robotoMono(
                                    fontSize: 60,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(163, 98, 255, 1),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Bringing ideas to life with my skills...",
                              style: GoogleFonts.robotoMono(
                                fontSize: 30,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "I'm a Software Developer &",
                            style: GoogleFonts.robotoMono(
                              fontSize: 45,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromRGBO(242, 234, 35, 1),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text(
                                    "an Intermediate Flutter Developer",
                                    style: GoogleFonts.robotoMono(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25, color: Colors.black,
                                      // color: Color.fromRGBO(163, 98, 255, 1),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                " who loves building apps and ideas!!!",
                                style: GoogleFonts.robotoMono(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Highlights",
                        style: GoogleFonts.robotoMono(
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromRGBO(31, 12, 56, 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        child: Image.asset(
                                          "bookmark_image.png",
                                          height: 150.0,
                                          width: 150.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 20,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Qualifications",
                                              style: GoogleFonts.robotoMono(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 30,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                              "Currently in 3rd year of Bachelor's\nDegree in Computer Science and\nEngineering with the current\nCGPA of 9.40.",
                                              style: GoogleFonts.robotoMono(
                                                // fontWeight: FontWeight.w600,
                                                fontSize: 15,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Expanded(
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromRGBO(31, 12, 56, 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        child: Image.asset(
                                          "bulb_image.png",
                                          height: 150.0,
                                          width: 150.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 20,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Aspirations",
                                              style: GoogleFonts.robotoMono(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 30,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                              "Aspiring to be a Machine Learning\nand Data Scientist in the near\nfuture.",
                                              style: GoogleFonts.robotoMono(
                                                // fontWeight: FontWeight.w600,
                                                fontSize: 15,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromRGBO(31, 12, 56, 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        child: Image.asset(
                                          "cup_image.png",
                                          height: 150.0,
                                          width: 150.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 20,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Flutter Developer",
                                              style: GoogleFonts.robotoMono(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 30,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                              "Currently developing Freelance\nFlutter projects for gaining\nexperience.",
                                              style: GoogleFonts.robotoMono(
                                                // fontWeight: FontWeight.w600,
                                                fontSize: 15,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Expanded(
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromRGBO(31, 12, 56, 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        child: Image.asset(
                                          "picker_image.png",
                                          height: 150.0,
                                          width: 150.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 20,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Interests",
                                              style: GoogleFonts.robotoMono(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 30,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                              "Interested in Learning Artificial\nIntelligence and Machine Learning.",
                                              style: GoogleFonts.robotoMono(
                                                // fontWeight: FontWeight.w600,
                                                fontSize: 15,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Stack",
                        style: GoogleFonts.robotoMono(
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 500,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StackContainer(image: "flutter.png", name: "Flutter"),
                          StackContainer(
                              image: "firebase.png", name: "Firebase"),
                          StackContainer(image: "cpp.png", name: "C++"),
                          StackContainer(image: "c.png", name: "C"),
                          StackContainer(image: "nodejs.png", name: "NodeJS")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 500,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StackContainer(image: "python.png", name: "Python"),
                          StackContainer(
                              image: "javascript.png", name: "Javascript"),
                          StackContainer(image: 'mongodb.png', name: "MongoDB"),
                          StackContainer(image: "java.png", name: "Java"),
                          StackContainer(image: "git.png", name: "Git"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Projects",
                        style: GoogleFonts.robotoMono(
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ProjectTile(),
                    SizedBox(
                      height: 60,
                    ),
                    ProjectTileRight(),
                    SizedBox(
                      height: 60,
                    ),
                    ProjectTile(),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Contact Me",
                                style: GoogleFonts.robotoMono(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  focusColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (!await launchUrl(
                                      Uri.parse(
                                          "https://www.linkedin.com/in/mudit-agrawal-50173b220/"),
                                    )) {
                                      print("Not Launched");
                                      throw Exception('Could not launch');
                                    }
                                  },
                                  child: Image.asset(
                                    "gmail.png",
                                    height: 40,
                                    width: 40,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "muditag007@gmail.com",
                                  style: GoogleFonts.robotoMono(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  focusColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (!await launchUrl(
                                      Uri.parse(
                                          "https://www.linkedin.com/in/mudit-agrawal-50173b220/"),
                                    )) {
                                      print("Not Launched");
                                      throw Exception('Could not launch');
                                    }
                                  },
                                  child: Image.asset(
                                    "contact.png",
                                    height: 40,
                                    width: 40,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "+91 9140821251",
                                  style: GoogleFonts.robotoMono(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(child: Container()),
                        Container(
                          height: 170,
                          width: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Other Links",
                                style: GoogleFonts.robotoMono(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  focusColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (!await launchUrl(
                                      Uri.parse(
                                          "https://www.linkedin.com/in/mudit-agrawal-50173b220/"),
                                    )) {
                                      print("Not Launched");
                                      throw Exception('Could not launch');
                                    }
                                  },
                                  child: Image.asset(
                                    "linkedin.png",
                                    height: 40,
                                    width: 40,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  focusColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (!await launchUrl(
                                      Uri.parse(
                                          "https://github.com/muditag007/"),
                                    )) {
                                      print("Not Launched");
                                      throw Exception('Could not launch');
                                    }
                                  },
                                  child: Image.asset(
                                    "github.png",
                                    height: 40,
                                    width: 40,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  focusColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (!await launchUrl(
                                      Uri.parse(
                                          "https://twitter.com/muditag007?t=V1zNtndZaExhWFHFVbkIvw&s=08"),
                                    )) {
                                      print("Not Launched");
                                      throw Exception('Could not launch');
                                    }
                                  },
                                  child: Image.asset(
                                    "twitter.png",
                                    height: 40,
                                    width: 40,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  focusColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (!await launchUrl(
                                      Uri.parse(
                                          "https://www.instagram.com/muditag007/"),
                                    )) {
                                      print("Not Launched");
                                      throw Exception('Could not launch');
                                    }
                                  },
                                  child: Image.asset(
                                    "instagram.png",
                                    height: 40,
                                    width: 40,
                                    color: Colors.white,
                                  ),
                                ),
                                
                                
                              ],
                            ),
                            
                          ],
                        ),
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Developed by Mudit Agrawal using Flutter.",
                        style: GoogleFonts.robotoMono(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Positioned(
            //   bottom: 10,
            //   left: width/2-100,
            //   child: Align(
            //     alignment: Alignment.center,
            //     child:
            //   ),
            // ),
            Positioned(
              top: 0,
              right: width / 20,
              child: Container(
                height: 70,
                child: Row(
                  children: [
                    InkWell(
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (!await launchUrl(
                          Uri.parse(
                              "https://www.linkedin.com/in/mudit-agrawal-50173b220/"),
                        )) {
                          print("Not Launched");
                          throw Exception('Could not launch');
                        }
                      },
                      child: Image.asset(
                        "linkedin.png",
                        height: 40,
                        width: 40,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (!await launchUrl(
                          Uri.parse("https://github.com/muditag007/"),
                        )) {
                          print("Not Launched");
                          throw Exception('Could not launch');
                        }
                      },
                      child: Image.asset(
                        "github.png",
                        height: 40,
                        width: 40,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  focusColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (!await launchUrl(
                                      Uri.parse(
                                          "https://twitter.com/muditag007?t=V1zNtndZaExhWFHFVbkIvw&s=08"),
                                    )) {
                                      print("Not Launched");
                                      throw Exception('Could not launch');
                                    }
                                  },
                                  child: Image.asset(
                                    "twitter.png",
                                    height: 40,
                                    width: 40,
                                    color: Colors.white,
                                  ),
                                ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (!await launchUrl(
                          Uri.parse("https://www.instagram.com/muditag007/"),
                        )) {
                          print("Not Launched");
                          throw Exception('Could not launch');
                        }
                      },
                      child: Image.asset(
                        "instagram.png",
                        height: 40,
                        width: 40,
                        color: Colors.white,
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
