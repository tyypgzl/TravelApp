import 'package:flutter/material.dart';
import '../../constants.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "Settings",
          style: TextStyle(color: kDrawerColor, fontSize: 20),
        ),
      ),
      body: Center(
        child: Text(
          "Settings Screen",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
