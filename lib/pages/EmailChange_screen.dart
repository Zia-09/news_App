import 'package:flutter/material.dart';
import 'package:news_app/pages/ProfleEdit_screen.dart';

class EmailchangeScreen extends StatefulWidget {
  const EmailchangeScreen({super.key});

  @override
  State<EmailchangeScreen> createState() => _EmailchangeScreenState();
}

class _EmailchangeScreenState extends State<EmailchangeScreen> {
  final EmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Account Settings"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              SizedBox(height: 15),
              Text(
                "Your email address",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Verdana',
                ),
              ),
              SizedBox(height: 30),
              Text(
                "YOUR CURRENT PASSWORD",
                style: TextStyle(
                  // fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),

              SizedBox(height: 30),
              Text(
                "YOUR NEW EMAIL ADDRESS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: EmailController,
                decoration: InputDecoration(border: UnderlineInputBorder()),
              ),
              SizedBox(height: 30),
              Text(
                " CONFIRM YOUR NEW EMAIL ADDRESS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(border: UnderlineInputBorder()),
              ),
              SizedBox(height: 50),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.07,
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfleeditScreen(),
                      ),
                    );
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
              SizedBox(height: MediaQuery.of(context).size.height / 4),
            ],
          ),
        ),
      ),
    );
  }
}
