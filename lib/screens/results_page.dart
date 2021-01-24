import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/animation.dart';

class ResultsPage extends StatefulWidget {
  static const routeName = 'results_page';
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  int value;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    animation = Tween<double>(
      begin: 0,
      end: Random().nextDouble() * 100,
    ).animate(controller)
      ..addListener(() {
        setState(() {});
        value = animation.value.toInt();
      });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: 'Heart',
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: width,
              ),
            ),
            Text(
              'You are $value% compatible',
              style: TextStyle(
                color: Colors.pink[800],
                fontSize: width * 0.08,
              ),
            )
          ],
        ),
      ),
    );
  }
}
