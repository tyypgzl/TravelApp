import 'package:flutter/material.dart';

import '../../constants.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({ Key? key }) : super(key: key);

  @override
  _ReviewsScreenState createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Rewievs",
          style: TextStyle(color: kDrawerColor, fontSize: 20),
        ),
      ),
      body: Center(
        child: Text(
          "Rewievs Screen",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}