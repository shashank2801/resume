import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shashank_cv/front.dart';

class NavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.grey[800],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    // decoration: BoxDecoration(
                    //   border: Border.all(width: 5.0, color: Colors.white),
                    //   borderRadius: BorderRadius.all(
                    //     Radius.circular(50.0),
                    //   ),
                    // ),
                    child: Image(
                      image: AssetImage('images/sha.png'),
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  Text(
                    "Shashank Singhal",
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.bold,
                      //  fontSize: MediaQuery.of(context).size.height * .02,
                        ),
                  ),
                  Spacer(),
                  InkWell(
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.height * .04,
                    ),
                    onTap: () => FrontPage.of(context).close(),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .175,
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.pen,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.height * .03,
                ),
                title: Text("Projects"),
                onTap: () {},
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.clipboard,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.height * .03,
                ),
                title: Text("CV"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
