import 'package:flutter/material.dart';
import 'package:love_compatibility_calculator/screens/results_page.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = 'home_page';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Your Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(hintText: "Partner's Name"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
