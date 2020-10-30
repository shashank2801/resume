import 'package:flutter/material.dart';
import 'package:shashank_cv/social.dart';

class Foot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        child: Center(
          child: Column(
            children: [
              Text("KIET Group of Institutions, Ghaziabad",style: TextStyle(fontSize: MediaQuery.of(context).size.width*.035,fontFamily: 'SourceSansPro'),),
              SocialAccounts(iconSize: (MediaQuery.of(context).orientation == Orientation.landscape ||
                      MediaQuery.of(context).size.longestSide > 1200)
                  ? MediaQuery.of(context).size.width*.03
                  : MediaQuery.of(context).size.height*.03),
            ],
          ),
        ),
      ),
    );
  }
}