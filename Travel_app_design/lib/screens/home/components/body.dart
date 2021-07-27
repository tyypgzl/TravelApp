import 'package:flutter/material.dart';
import 'package:travel/screens/home/components/popular_places.dart';
import 'package:travel/screens/home/components/top_travelers.dart';
import 'package:travel/screens/profile/profile_screen.dart';
import 'package:travel/size_config.dart';
import '../../../constants.dart';
import 'home_header.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var secilenSayfaIndeks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
            child: PopupMenuButton(
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
            //pop
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
            VerticalSpacing(
              of: 3,
            ),
            PopularPlaces(),
            VerticalSpacing(
              of: 5,
            ),
            TopTravelers(),
          ],
        ),
      ),
    );
  }
}
