import 'package:flutter/material.dart';

class AppmentanenceScreen extends StatelessWidget {
  const AppmentanenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(child: Image.asset("images/bookmark.png")),
          // Spacer(),
          SizedBox(height: 90),
          Text(
            "Newzler in Maintenance",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "we apalogies for any inconvenience. \n We will be right back",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 100),
          // SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Padding(padding: EdgeInsets.all(20)),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.065,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  // border: Border.all(color: Colors.black),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    "Close",
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
