import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialAccounts extends StatelessWidget {

  final double iconSize;

  const SocialAccounts({Key key, @required this.iconSize}) : super(key: key);

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: InkWell(
            child: Icon(
              FontAwesomeIcons.instagram,
              size: iconSize,
              color: Colors.white,
            ),
            onTap: () async {
              if (await canLaunch('https://www.instagram.com/shashank_182')) {
                await launch('https://www.instagram.com/shashank_182');
              } else {
                throw "Couldn't Launch";
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: InkWell(
            child: Icon(
              FontAwesomeIcons.twitter,
              size: iconSize,
              color: Colors.white,
            ),
            onTap: () async {
              if (await canLaunch('https://www.twitter.com/Shashan77386348')) {
                await launch('https://www.twitter.com/Shashan77386348');
              } else {
                throw "Couldn't Launch";
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: InkWell(
            child: Icon(
              FontAwesomeIcons.linkedin,
              size: iconSize,
              color: Colors.white,
            ),
            onTap: () async {
              if (await canLaunch('https://www.linkedin.com/in/shashank281')) {
                await launch('https://www.linkedin.com/in/shashank281');
              } else {
                throw "Couldn't Launch";
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: InkWell(
            child: Icon(
              FontAwesomeIcons.github,
              size: iconSize,
              color: Colors.white,
            ),
            onTap: () async {
              if (await canLaunch('https://www.github.com/shashank2801')) {
                await launch('https://www.github.com/shashank2801');
              } else {
                throw "Couldn't Launch";
              }
            },
          ),
        ),
      ],
    );
  }
}