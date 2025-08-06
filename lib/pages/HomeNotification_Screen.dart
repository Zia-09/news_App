import 'package:flutter/material.dart';

class HomenotificationScreen extends StatelessWidget {
  const HomenotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.3,
            width: MediaQuery.of(context).size.width,

            child: Image.asset("images/trump.jpg", fit: BoxFit.cover),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.77,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('images/new.webp'),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "News18",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "10 min ago",
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        color: Colors.red,
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Trump presidency's final\n days: 'In his mind, he will\n not have lost'",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  // Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.white,
                        size: 28,
                      ),
                      Icon(
                        Icons.bookmark_border_outlined,
                        color: Colors.white,
                        size: 28,
                      ),
                      Icon(Icons.copy, color: Colors.white, size: 28),
                      Icon(Icons.share, color: Colors.white, size: 28),
                    ],
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: MaterialButton(
                      padding: EdgeInsets.all(15),
                      // height: 50,
                      minWidth: MediaQuery.of(context).size.width,
                      color: Colors.red,
                      onPressed: () {},
                      child: Text(
                        "Read the full story",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
