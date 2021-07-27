import 'package:flutter/material.dart';
import 'package:travel/screens/home/components/searchField.dart';

import '../../../size_config.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  _HomeHeaderState createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/images/home_bg.png",
          height: getProportionateScreenWidth(315),
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(80),
            ),
            Text(
              "Traveler",
              style: TextStyle(
                color: Colors.white,
                fontSize: getProportionateScreenWidth(73),
                fontWeight: FontWeight.bold,
                height: 0.5,
              ),
            ),
            Text(
              "Travel Comunity App",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Positioned(
          bottom: getProportionateScreenWidth(-25),
          child: SearchField(),
        ),
      ],
    );
  }
}
