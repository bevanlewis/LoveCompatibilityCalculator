import 'package:flutter/material.dart';
import 'package:love_compatibility_calculator/screens/results_page.dart';
import 'package:love_compatibility_calculator/constants.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = 'home_page';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Enter your name
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: HomeTextField('Your Name'),
              ),
              //The heart button
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Hero(
                  tag: 'Heart',
                  child: IconButton(
                    iconSize: 250.0,
                    onPressed: () {
                      Navigator.pushNamed(context, ResultsPage.routeName);
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      semanticLabel: 'CALCULATE',
                    ),
                  ),
                ),
              ),
              // Enter your partner's name
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: HomeTextField("Partner's name"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeTextField extends StatelessWidget {
  HomeTextField(@required this.hintText);
  String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 25.0,
        color: kInputColor,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: kFillColor,
        filled: true,
        hintStyle: TextStyle(
          fontSize: 25.0,
          color: kHintColor,
        ),
        labelStyle: TextStyle(fontSize: 25.0),
        border: OutlineInputBorder(),
      ),
    );
  }
}
