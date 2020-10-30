import 'package:flutter/material.dart';
import 'package:shashank_cv/social.dart';
import 'package:shashank_cv/top.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'foot.dart';
import 'mid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shashank',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: aboutMe(),
    );
  }
}

class aboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "About Me",
            style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple[800],
        ),
        body: aboutMeBody(),
      ),
    );
  }
}

class aboutMeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              (MediaQuery.of(context).orientation == Orientation.landscape ||
                      MediaQuery.of(context).size.longestSide > 1200)
                  ? topLandscape(context)
                  : topPortrait(context),
              SocialAccounts(iconSize: (MediaQuery.of(context).orientation == Orientation.landscape ||
                      MediaQuery.of(context).size.longestSide > 1200)
                  ? MediaQuery.of(context).size.width*.03
                  : MediaQuery.of(context).size.height*.03),
              Mid(),
              Foot(),
            ],
          ),
        ),
      ),
    );
  }
}


