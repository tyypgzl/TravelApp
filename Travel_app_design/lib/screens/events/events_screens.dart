import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel/models/TravelSpot.dart';
import 'package:travel/screens/home/components/place_card.dart';
import 'package:travel/screens/profile/profile_screen.dart';
import 'package:travel/size_config.dart';

import '../../constants.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  var secilenSayfaIndeks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
              Scaffold.of(context).openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: kIconColor,
          ),
        ),
        actions: [
          ClipOval(
            child:PopupMenuButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: kDrawerColor,
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/profile.png",
                width: 36,
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Center(
                    child: Image.asset(
                      "assets/images/profile.png",
                      width: 70,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Container(
                    height: 40,
                    width: 125,
                    decoration: BoxDecoration(
                      color: kDrawerColor,
                      boxShadow: [kDefualtShadow],
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Tayyip Güzel",
                      style: TextStyle(
                          fontSize: 14,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  padding: EdgeInsets.all(20),
                  child: SizedBox(
                    width: 125,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: kPrimaryColor),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ProfileScreen();
                        }));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.account_circle),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Profile",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                runSpacing: 20,
                children: [
                  ...List.generate(
                    travelSpots.length,
                    (index) => PlaceCard(
                      isFulCard: true,
                      travelSpot: travelSpots[index],
                    ),
                  ),
                  Container(
                    width: getProportionateScreenWidth(165),
                    height: getProportionateScreenHeight(350),
                    decoration: BoxDecoration(
                      color: Color(0xFF6A6C93).withOpacity(0.09),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 2,
                        color: Color(0xFFEBE8F6),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: getProportionateScreenHeight(53),
                          width: getProportionateScreenWidth(53),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: kPrimaryColor,
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60),
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 29,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        VerticalSpacing(of: 10),
                        Text(
                          "Add New Places",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
