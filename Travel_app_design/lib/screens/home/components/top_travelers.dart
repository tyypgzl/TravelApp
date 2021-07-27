import 'package:flutter/material.dart';
import 'package:travel/models/TravelSpot.dart';
import 'package:travel/models/User.dart';
import 'package:travel/screens/home/components/sectiontile.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class TopTravelers extends StatefulWidget {
  const TopTravelers({
    Key? key,
  }) : super(key: key);

  @override
  _TopTravelersState createState() => _TopTravelersState();
}

class _TopTravelersState extends State<TopTravelers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTile(
          sectionTitle: "Top Travelers on Spark",
        ),
        Container(
          //width: double.infinity,
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
          ),
          padding: EdgeInsets.all(
            getProportionateScreenWidth(20),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [kDefualtShadow],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...List.generate(
                travelSpots.length + 1,
                (index) => UserCard(
                  user: topTravelers[index],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            user.image,
            width: getProportionateScreenWidth(50),
            height: getProportionateScreenHeight(50),
            fit: BoxFit.cover,
          ),
        ),
        VerticalSpacing(
          of: 10,
        ),
        Text(
          user.name,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
