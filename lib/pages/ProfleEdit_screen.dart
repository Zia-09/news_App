// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:news_app/pages/EditName_screen.dart';
import 'package:news_app/pages/EmailChange_screen.dart';
import 'package:news_app/pages/account_setting_screen.dart';
import 'package:news_app/pages/changeBirth_screen.dart';
import 'package:news_app/pages/changeCountryName_screen.dart';
import 'package:news_app/pages/changeGender_screen.dart';
import 'package:news_app/pages/changeMobile_number_screen.dart';

class ProfleeditScreen extends StatelessWidget {
  final FirstName;
  final LastName;
  final Email;
  final phone;
  final day;
  final year;
  final month;
  final gender;
  final country;
  const ProfleeditScreen({
    super.key,
    this.FirstName,
    this.LastName,
    this.Email,
    this.phone,
    this.day,
    this.month,
    this.year,
    this.gender,
    this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AccountSettingScreen(
                mail: Email,
                name: "$FirstName $LastName",
              ),
            ),
          ),
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Account Setting"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              SizedBox(height: 10),
              Text(
                "Profile",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditnameScreen()),
                  );

                  // Check and update if data was returned
                  if (result != null && result is Map<String, String>) {
                    // Use setState if ProfleeditScreen is converted to StatefulWidget
                    print("FirstName: ${result['firstName']}");
                    print("LastName: ${result['lastName']}");
                  }
                },
                child: _buildSection(
                  "NAME",
                  (FirstName == null || LastName == null)
                      ? "ZIA ULLAH"
                      : "$FirstName $LastName",
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmailchangeScreen(),
                    ),
                  );
                },
                child: _buildSection("USERNAME", "ZIA", showIcon: false),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmailchangeScreen(),
                    ),
                  );
                },
                child: _buildSection(
                  "EMAIL ADDRESS",
                  Email != null ? Email : "zia123@gmail.com",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChangemobileNumberScreen(),
                    ),
                  );
                },
                child: _buildSection(
                  "MOBILE NUMBER",
                  phone != null ? phone : "+92-3444460774",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BirthdayScreen()),
                  );
                },
                child: _buildSection(
                  "BIRTHDAY",
                  day != null && month != null && year != null
                      ? "$month, "
                            "$day, "
                            "$year"
                      : "JULY, 15, 2002",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChangegenderScreen(),
                    ),
                  );
                },
                child: _buildSection(
                  "GENDER",
                  gender != null ? gender : "MALE",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChangecountrynameScreen(),
                    ),
                  );
                },
                child: _buildSection(
                  "COUNTRY",
                  country != null ? country : "PAKISTAN",
                ),
              ),
              _buildSection("TIMEZONE", "ASIA/KARACHI", showIcon: false),
              _buildSection(
                "LAST LOGIN",
                "January 18, 2021 02:32 PM",
                showIcon: false,
              ),
              _buildSection(
                "MEMBER SINCE",
                "January 18, 2021",
                showIcon: false,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String label, String value, {bool showIcon = true}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Row(
          children: [
            Text(value, style: TextStyle(fontSize: 16)),
            Spacer(),
            if (showIcon) Icon(Icons.arrow_forward_ios, size: 18),
          ],
        ),
        Divider(),
        SizedBox(height: 20),
      ],
    );
  }
}
