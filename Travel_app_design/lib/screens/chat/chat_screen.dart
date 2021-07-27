import 'package:flutter/material.dart';
import 'package:travel/screens/profile/profile_screen.dart';

import '../../constants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
          ),
        ],
      ),
      body: Center(
        child: Text("Chat Screen"),
      ),
    );
  }
}
