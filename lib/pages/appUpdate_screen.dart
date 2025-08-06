import 'package:flutter/material.dart';

class AppupdateScreen extends StatelessWidget {
  const AppupdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(child: Image.asset("images/update.png")),
          // Spacer(),
          SizedBox(height: 90),
          Text(
            "Update your app",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "An update is available with new features a faster\n experiences fixes and more. It typically takes less\n than a minutes",
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 100),
          // SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Padding(padding: EdgeInsets.all(20)),
              Container(
                width: MediaQuery.of(context).size.width * 0.34,
                height: MediaQuery.of(context).size.height * 0.065,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    "Not Now",
                    style: TextStyle(
                      // color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.34,
                height: MediaQuery.of(context).size.height * 0.065,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  // border: Border.all(color: Colors.black),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    "Update",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
