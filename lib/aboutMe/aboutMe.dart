import 'package:flutter/material.dart';
import 'package:shashank_cv/front.dart';
import 'package:shashank_cv/social.dart';
import 'package:shashank_cv/aboutMe/top.dart';

import '../aboutMe/foot.dart';
import '../aboutMe/mid.dart';

// ignore: camel_case_types
class aboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
        child: Scaffold(
          appBar: AppBar(
            leading: InkWell(
              child: Icon(
                Icons.menu,
                color: Colors.white,
                size: MediaQuery.of(context).size.height * .04,
              ),
              onTap: ()=> FrontPage.of(context).toggleDrawer(),
            ),
            title: Text(
              "About Me",
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Color(0xff35C7D0),
          ),
          body: aboutMeBody(),
        ),
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
              SocialAccounts(
                  iconSize: (MediaQuery.of(context).orientation ==
                              Orientation.landscape ||
                          MediaQuery.of(context).size.longestSide > 1200)
                      ? MediaQuery.of(context).size.width * .03
                      : MediaQuery.of(context).size.height * .03),
              Mid(),
              Foot(),
            ],
          ),
        ),
      ),
    );
  }
}
