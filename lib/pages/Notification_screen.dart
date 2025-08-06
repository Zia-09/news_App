import 'package:flutter/material.dart';
import 'package:news_app/pages/cricketScore_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Divider(),
          ListTile(
            leading: Text(
              "Breaking News",
              style: TextStyle(fontSize: 19, color: Colors.black),
            ),
            trailing: Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  // isSwitched = true;
                });
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Text(
              "Cricket Score Update",
              style: TextStyle(fontSize: 19, color: Colors.black),
            ),
            trailing: Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value; // Set to what the user toggled
                });

                if (value == true) {
                  // Navigate to next screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CricketscoreScreen(),
                    ),
                  );
                }
              },
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
