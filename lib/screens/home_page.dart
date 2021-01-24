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
    double width = MediaQuery.of(context).size.width;

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
                    iconSize: width * 0.7,
                    onPressed: () {
                      Navigator.pushNamed(context, ResultsPage.routeName);
                    },
                    icon: Stack(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          semanticLabel: 'CALCULATE',
                        ),
                        Center(
                          child: Text(
                            'CALCULATE',
                            style: TextStyle(
                              color: Colors.pink[50],
                              fontSize: width * 0.06,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Enter your partner's name
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: HomeTextField("Partner's Name"),
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
