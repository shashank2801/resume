import 'package:flutter/material.dart';

final List<String> skills = [
  "Flutter",
  "DSA",
  "CP",
  "C++",
  "Java",
];

class Mid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff60D9D0),
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 1,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              color: Color(0xff35C7D0),
              width: MediaQuery.of(context).size.width * 0.15,
              child: Center(
                child: Text(
                  "SKILLS:",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * .03,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for (int i = 0; i < skills.length; i++)
                        skillCard(skills[i], context)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget skillCard(String skill, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffffa48e),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        width: MediaQuery.of(context).size.width * .25,
        height: (MediaQuery.of(context).orientation == Orientation.landscape ||
                MediaQuery.of(context).size.longestSide > 1200)
            ? MediaQuery.of(context).size.height * .25
            : MediaQuery.of(context).size.height * .17,
        child: Center(
          child: Text(
            skill,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.03,
                fontFamily: 'SourceSansPro',
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
