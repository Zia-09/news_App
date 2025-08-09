import 'package:flutter/material.dart';
import 'package:news_app/pages/CreatePassword_screen.dart';
import 'package:news_app/pages/ProfileUpdate_screen.dart';
import 'package:news_app/pages/ProfleEdit_screen.dart';
import 'package:news_app/pages/bottomNavigation.dart';
import 'package:news_app/pages/changePassword_screen.dart';
// import 'package:news_app/pages/changePassword_screen.dart';

class AccountSettingScreen extends StatelessWidget {
  AccountSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Settings"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Bottomnav()),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfleeditScreen()),
                );
              },
              child: ListTile(
                leading: Text("Profile", style: TextStyle(fontSize: 18)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileupdateScreen(),
                  ),
                );
              },
              child: ListTile(
                leading: Text("Profile Photo", style: TextStyle(fontSize: 18)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangepasswordScreen(),
                  ),
                );
              },
              child: ListTile(
                leading: Text(
                  "Change Password",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreatepasswordScreen(),
                  ),
                );
              },
              child: ListTile(
                leading: Text(
                  "Create Password",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(),
            ListTile(leading: Text("Logout", style: TextStyle(fontSize: 18))),
            Divider(),
            ListTile(
              leading: Text(
                "Logout From All Devices",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Divider(),
            ListTile(
              leading: Text(
                "Delete Account",
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
