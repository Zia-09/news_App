import 'package:flutter/material.dart';
import 'package:news_app/signup/signin_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/welcome.png"),
            Text(
              "Welcome, Zia",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Text(
              "Enjoy our  best news engine experience ever.",
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 20),

            ClipRRect(
              borderRadius: BorderRadius.circular(100),

              child: MaterialButton(
                height: MediaQuery.of(context).size.height * 0.054,
                minWidth: MediaQuery.of(context).size.width * 0.2,

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SigninScreen()),
                  );
                },
                child: Text(
                  "Let's Start",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
