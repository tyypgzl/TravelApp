import 'package:flutter/material.dart';

import '../../constants.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  _RequestScreenState createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Request",
          style: TextStyle(color: kDrawerColor, fontSize: 20),
        ),
      ),
      body: Center(
        child: Text(
          "Request Screen",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
