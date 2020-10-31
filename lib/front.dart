import 'package:flutter/material.dart';
import 'package:shashank_cv/aboutMe/aboutMe.dart';
import 'package:shashank_cv/nav.dart';

class FrontPage extends StatefulWidget {
  final Widget child;

  const FrontPage({Key key, this.child}) : super(key: key);
  @override
  static FrontPageState of(BuildContext context) =>
      context.findAncestorStateOfType<FrontPageState>();

  FrontPageState createState() => FrontPageState();
}

class FrontPageState extends State<FrontPage>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(microseconds: 200));
  }

  void close() => animationController.reverse();

  void open() => animationController.forward();

  void toggleDrawer() => animationController.isCompleted ? close() : open();

  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      child: widget.child,
      builder: (context, child) {
        double animValue = animationController.value;
        final slideAmount = 130*animValue;
        final contentScale = 1.0-(0.2*animValue);
        return Stack(
          children: [
            NavPage(),
            Transform(
              transform: Matrix4.identity()
                ..translate(slideAmount)
                ..scale(contentScale),
              child: aboutMe(),
              alignment: Alignment.bottomCenter,
            ),
          ],
        );
      },
    );
  }
}
