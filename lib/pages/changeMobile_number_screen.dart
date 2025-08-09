import 'package:flutter/material.dart';
// import 'package:news_app/pages/ProfileUpdate_screen.dart';
import 'package:news_app/pages/ProfleEdit_screen.dart';

class ChangemobileNumberScreen extends StatelessWidget {
  const ChangemobileNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneController = TextEditingController();

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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              const Text(
                "Your mobile\nnumber",
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              const Text(
                "YOUR MOBILE NUMBER",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 14,
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 1),
                      ),
                    ),
                    child: const Text("+92", style: TextStyle(fontSize: 16)),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        hintText: "1234567890",
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle update logic here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfleeditScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1DA1F2), // Blue
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      elevation: 4,
                      shadowColor: Colors.blueAccent.shade100,
                    ),
                    child: const Text(
                      "Update",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
