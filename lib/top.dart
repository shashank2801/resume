import 'package:flutter/cupertino.dart';

Widget topLandscape(BuildContext context) {
  return Row(
    children: [
      Image(
        image: AssetImage('images/sha.png'),
      ),
      SizedBox(width: MediaQuery.of(context).size.width*.2,),
      Text("A hyper active individual with the\nzeal to learn everything under the\nsun.Expanding my horizons each\nday tojustify my curious personal.\n\nIn search of an inculcating work\nenvironment to build upon my\nprofessional career.",
      style: TextStyle(
        fontFamily: 'Lobster',
        fontSize: 25,
      ),),
    ],
  );
}

Widget topPortrait(BuildContext context) {
  return Column(
    children: [
      Image(
        image: AssetImage('images/sha.png'),
      ),
      SizedBox(height: MediaQuery.of(context).size.height*.05,),
      Text("A hyper active individual with the zeal to learn everything under the sun.Expanding my horizons each day to justify my curious personal.\n\nIn search of an inculcating work environment to build upon my professional career.",
      style: TextStyle(
        fontFamily: 'Lobster',
        fontSize: 25,
      ),),
    ],
  );
}
