import 'package:flutter/material.dart';

import '../../constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var secilenSayfaIndeks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          "My Profile",
          style: TextStyle(color: kDrawerColor, fontSize: 20),
        ),
      ),
      body: Center(
        child: Text(
          "Profile Screen",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
