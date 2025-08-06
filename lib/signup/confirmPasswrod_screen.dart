import 'package:flutter/material.dart';
// import 'package:news_app/Widgets/button.dart';
import 'package:news_app/pages/addProfile_screen.dart';

class ConfirmpasswrodScreen extends StatelessWidget {
  const ConfirmpasswrodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 65),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Confirm your email address ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CONFIRMATION CODE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    suffixIcon: Icon(Icons.cancel),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Please check your email svarup03@gmail.com to confirm your registration",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 35),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.07,
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddprofileScreen()),
                  );
                },
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(50),
              ),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.07,
                // color: Colors.blue,
                onPressed: () {},
                child: Text(
                  "Resend",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
