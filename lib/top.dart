import 'package:flutter/material.dart';

Widget topLandscape(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          Image(
            height: MediaQuery.of(context).size.width*.25,
            image: AssetImage('images/sha.png')
            ,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.height * .1,
          ),
          Text(
            "Shashank Singhal",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width*.035, fontFamily: 'SourceSansPro', color: Colors.red),
          ),
        ],
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * .11,
      ),
      Text(
        "A hyper active individual with the\nzeal to learn everything under the\nsun.Expanding my horizons each\nday tojustify my curious personal.\n\nIn search of an inculcating work\nenvironment to build upon my\nprofessional career.",
        style: TextStyle(
          fontFamily: 'SourceSansPro',
          fontSize: MediaQuery.of(context).size.width*.02,
        ),
      ),
    ],
  );
}

Widget topPortrait(BuildContext context) {
  return Column(
    children: [
      Image(
        image: AssetImage('images/sha.png'),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * .05,
      ),
      Text(
        "Shashank\nSinghal",
        style: TextStyle(
            fontSize: MediaQuery.of(context).size.width*.15, fontFamily: 'SourceSansPro', color: Colors.red),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * .05,
      ),
      Text(
        "A hyper active individual with the zeal to learn everything under the sun.Expanding my horizons each day to justify my curious personal.\n\nIn search of an inculcating work environment to build upon my professional career.",
        style: TextStyle(
          fontFamily: 'SourceSansPro',
          fontSize: MediaQuery.of(context).size.height*.03,
        ),
      ),
    ],
  );
}
