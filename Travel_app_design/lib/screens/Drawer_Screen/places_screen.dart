import 'package:flutter/material.dart';

import '../../constants.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({Key? key}) : super(key: key);

  @override
  _PlacesScreenState createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Places",
          style: TextStyle(color: kDrawerColor, fontSize: 20),
        ),
      ),
      body: Center(
        child: Text(
          "Places Screen",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
