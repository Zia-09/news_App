// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:news_app/Widgets/listtile_widget.dart';
import 'package:news_app/pages/My_publisher_screen.dart';
import 'package:news_app/pages/Notification_screen.dart';
import 'package:news_app/pages/Theme_change_screen.dart';
import 'package:news_app/pages/account_setting_screen.dart';
import 'package:news_app/pages/bookMark_screen.dart';
// import 'package:news_app/pages/bookMark_screen.dart' hide MyBookmarkScreen;
import 'package:news_app/pages/myLanguages_screen.dart';
import 'package:news_app/pages/mycategory_screen.dart';

class MoreScreen extends StatelessWidget {
  final Email;
  final Name;
  const MoreScreen({super.key, this.Email, this.Name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(leading: Text("Account")),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Divider(),
              Container(
                margin: EdgeInsets.all(12),
                // padding: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  // /border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            AccountSettingScreen(mail: "", name: ""),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey[300],
                        child: Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Darrell Chan",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 4),
                                Icon(
                                  Icons.navigate_next,
                                  color: Colors.blue,
                                  size: 25,
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Text(
                              "abc123@pnsample.com",
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            // Divider(),
                          ],
                        ),
                      ),
                      // Divider(),
                    ],
                  ),
                ),
              ),
              Divider(),
              SizedBox(height: 20),
              ReusableListTile(
                icon: Icons.list_alt,
                title: "Notifications",
                onTap: () {
                  // Your action here
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              ReusableListTile(
                icon: Icons.color_lens,
                title: "Theme",
                onTap: () {
                  // Your action here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThemeScreen()),
                  );
                },
              ),
              SizedBox(height: 20),
              ReusableListTile(
                icon: Icons.line_style_outlined,
                title: "My Publisher",
                onTap: () {
                  // Your action here
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyPublisherScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              ReusableListTile(
                icon: Icons.bookmark_border_outlined,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyBookmarkScreen()),
                  );
                },
                title: "My Bookmark",
              ),
              SizedBox(height: 20),
              ReusableListTile(
                icon: Icons.language,
                title: "My Language",
                onTap: () {
                  // Your action here
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MylanguagesScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              ReusableListTile(
                icon: Icons.category_outlined,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MycategoryScreen()),
                  );
                },
                title: "My Category ",
              ),
              SizedBox(height: 20),
              ReusableListTile(
                icon: Icons.adobe_outlined,
                title: "About",
                onTap: () {
                  // Your action here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MycategoryScreen()),
                  );
                },
              ),
              SizedBox(height: 20),
              ReusableListTile(
                icon: Icons.privacy_tip_outlined,
                title: "Privacy ",
              ),
              SizedBox(height: 20),
              ReusableListTile(
                icon: Icons.list_alt,
                title: "Terms",
                onTap: () {
                  // Your action here
                },
              ),
              SizedBox(height: 20),
              ReusableListTile(icon: Icons.share, title: "Share this App "),
              SizedBox(height: 20),
              ReusableListTile(
                icon: Icons.star,
                title: "Rate this App",
                onTap: () {
                  // Your action here
                },
              ),
              SizedBox(height: 20),
              ReusableListTile(
                icon: Icons.facebook,
                title: "Follow on Facebook",
              ),
              SizedBox(height: 20),
              ReusableListTile(
                icon: Icons.brightness_3_rounded,
                title: "Follow on Twitter",
                onTap: () {
                  // Your action here
                },
              ),
              SizedBox(height: 20),
              ReusableListTile(
                icon: Icons.youtube_searched_for_sharp,
                title: "Follow on Instagram",
                onTap: () {
                  // Your action here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
