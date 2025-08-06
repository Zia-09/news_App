import 'package:flutter/material.dart';
// import 'package:news_app/pages/bottomNavigation.dart';
import 'package:news_app/pages/more_screen.dart';

class CricketresultScreen extends StatelessWidget {
  const CricketresultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MoreScreen()),
            );
          },
          icon: Icon(Icons.arrow_circle_left_outlined, size: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.cancel_outlined, size: 28),
          ),
          Padding(padding: EdgeInsets.all(10)),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Live",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              "India V/S Australia\n 2nd Test,",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 10),
            Text(
              "2nd Test, India tour of Australia \nMelbourne Cricket Ground, Australia",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(height: 30),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("images/india.png"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "India",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("36/1 (11 ov)", style: TextStyle()),
                  ],
                ),
                SizedBox(width: 30),
                Text(
                  "V/S",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    // color: Colors.white,
                  ),
                ),
                SizedBox(width: 50),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("images/aus.png"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Australia",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("195", style: TextStyle()),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "India won by 5 Wickets",
              style: TextStyle(fontSize: 18, color: Colors.black38),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PLAYER OF THE MATCH",
                  style: TextStyle(fontSize: 15, color: Colors.black38),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/rahane.jpg"),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ajinkya Rahane",
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        Text("India", style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.all(15),
                color: Colors.blue,
                onPressed: () {},
                child: Text(
                  "Read full scoreboard",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Powered By ",
                  style: TextStyle(
                    // color: Colors.white,
                    // fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "ESPNcricinfo",
                  style: TextStyle(
                    color: Colors.blue,
                    // fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
