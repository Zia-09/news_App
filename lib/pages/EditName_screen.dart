import 'package:flutter/material.dart';
import 'package:news_app/pages/ProfleEdit_screen.dart';

class EditnameScreen extends StatefulWidget {
  const EditnameScreen({super.key});

  @override
  State<EditnameScreen> createState() => _EditnameScreenState();
}

class _EditnameScreenState extends State<EditnameScreen> {
  final Firstname = TextEditingController();
  final Lastname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Settings"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.clear))],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              "Your name",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "YOUR FIRST NAME",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        controller: Firstname,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Column(
                    children: [
                      Text(
                        "YOUR LAST NAME",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        controller: Lastname,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.07,
                color: Colors.blue,
                onPressed: () {
                  Navigator.pop(context, {
                    'firstName': Firstname.text.toUpperCase(),
                    'lastName': Lastname.text.toUpperCase(),
                  });
                },

                child: Text(
                  "Update",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
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
