import 'package:flutter/material.dart';
import 'package:news_app/pages/cricketResult_screen.dart';

class CricketscoreScreen extends StatelessWidget {
  const CricketscoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            // Horizontally scrollable cards
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CricketresultScreen(),
                        ),
                      );
                    },
                    child: _buildCard(context),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CricketresultScreen(),
                        ),
                      );
                    },
                    child: _buildCard(context),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CricketresultScreen(),
                        ),
                      );
                    },
                    child: _buildCard(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method for a card with Column content
  Widget _buildCard(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.7,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 239, 236, 236),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "2nd test",
                style: TextStyle(
                  // fontSize: 18,
                  // fontWeight: FontWeight.bold,
                  // color: Colors.white,
                ),
              ),
              Spacer(),

              Text(
                "live",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  SizedBox(height: 15),
                  CircleAvatar(backgroundImage: AssetImage("images/india.png")),
                  Text("India", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("36/1 (11 ov)", style: TextStyle()),
                ],
              ),
              SizedBox(width: 20),
              Text(
                "V/S",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  // color: Colors.white,
                ),
              ),
              SizedBox(width: 30),
              Column(
                children: [
                  CircleAvatar(backgroundImage: AssetImage("images/aus.png")),
                  Text(
                    "Australia",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("195", style: TextStyle()),
                ],
              ),
            ],
          ),

          Spacer(),
          Text("India won by 5 Wickets"),
        ],
      ),
    );
  }
}
