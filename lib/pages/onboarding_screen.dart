// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:news_app/pages/onboarding_screen1.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("images/search.png"),
          Container(
            height: MediaQuery.of(context).size.height * 0.41,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Discover daily news",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "We bring you closer to the news.",
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(110),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OnboardingScreen1(),
                          ),
                        );
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue,
                      height: 50,
                      minWidth: 130,
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
