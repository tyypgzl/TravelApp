import 'dart:io';
import 'package:flutter/material.dart';
import 'package:travel/constants.dart';
import 'package:travel/screens/Drawer_Screen/places_screen.dart';
import 'package:travel/screens/Drawer_Screen/request_screeen.dart';
import 'package:travel/screens/Drawer_Screen/reviews_screen.dart';
import 'package:travel/screens/Drawer_Screen/settings.dart';
import 'package:travel/screens/chat/chat_screen.dart';
import 'package:travel/screens/events/events_screens.dart';
import 'package:travel/screens/home/components/body.dart';
import 'package:travel/size_config.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var secilenSayfaIndeks = 0;
  List<Widget> sayfaList = <Widget>[
    Body(),
    EventsScreen(),
    ChatScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: sayfaList[secilenSayfaIndeks],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: secilenSayfaIndeks,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          setState(() {
            secilenSayfaIndeks = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Events",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            color: kDrawerColor,
          ),
          child: ListView(
            children: [
              Container(
                child: Center(
                  child: Column(
                    children: [
                      VerticalSpacing(of: 50),
                      Image.asset(
                        "assets/images/travel.png",
                        width: 180,
                      ),
                      VerticalSpacing(of: 25),
                      Text(
                        "Hello!",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w200),
                      ),
                      VerticalSpacing(of: 7),
                      Text(
                        "Tayyip GÜZEL",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w500),
                      ),
                      VerticalSpacing(
                        of: 15,
                      ),
                      Divider(
                        color: Colors.deepPurpleAccent,
                        height: 3,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ],
                  ),
                ),
              ),
              VerticalSpacing(
                of: 25,
              ),
              ListTile(
                leading: Icon(
                  Icons.travel_explore,
                  size: 30,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  "Places",
                  style: TextStyle(fontSize: 17),
                ),
                minLeadingWidth: 1,
                contentPadding: EdgeInsets.symmetric(horizontal: 85),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PlacesScreen();
                      },
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.published_with_changes_outlined,
                  size: 30,
                  color: Colors.blue,
                ),
                title: Text(
                  "Request",
                  style: TextStyle(fontSize: 17),
                ),
                minLeadingWidth: 1,
                contentPadding: EdgeInsets.symmetric(horizontal: 85),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RequestScreen();
                      },
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.insert_comment,
                  size: 30,
                  color: Colors.yellow,
                ),
                title: Text(
                  "Reviews",
                  style: TextStyle(fontSize: 17),
                ),
                minLeadingWidth: 1,
                contentPadding: EdgeInsets.symmetric(horizontal: 85),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ReviewsScreen();
                      },
                    ),
                  );
                },
              ),
              VerticalSpacing(
                of: 25,
              ),
              Divider(
                color: Colors.deepPurpleAccent,
                height: 6,
                indent: 10,
                endIndent: 10,
              ),
              VerticalSpacing(
                of: 25,
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.grey,
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(fontSize: 17),
                ),
                minLeadingWidth: 1,
                contentPadding: EdgeInsets.symmetric(horizontal: 85),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SettingsScreen();
                      },
                    ),
                  );
                },
              ),
              VerticalSpacing(
                of: 25,
              ),
              Divider(
                color: Colors.deepPurpleAccent,
                height: 6,
                indent: 10,
                endIndent: 10,
              ),
              VerticalSpacing(
                of: 25,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_outlined,
                  size: 30,
                  color: Colors.red,
                ),
                title: Text(
                  "Log Out",
                  style: TextStyle(fontSize: 17),
                ),
                minLeadingWidth: 1,
                contentPadding: EdgeInsets.symmetric(horizontal: 85),
                onTap: () {
                  exit(0);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
