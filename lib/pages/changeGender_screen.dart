import 'package:flutter/material.dart';
import 'package:news_app/pages/ProfleEdit_screen.dart';

class ChangegenderScreen extends StatefulWidget {
  const ChangegenderScreen({super.key});

  @override
  State<ChangegenderScreen> createState() => _ChangegenderScreenState();
}

class _ChangegenderScreenState extends State<ChangegenderScreen> {
  // final Genger = TextEditingController();
  final List<String> genderOptions = ['Male', 'Female'];
  String? selectedGender;

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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your Gender',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  // decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'YOUR GENDER',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 10),

              // Dropdown inside TextField look
              DropdownButtonFormField<String>(
                value: selectedGender,
                items: genderOptions
                    .map(
                      (gender) =>
                          DropdownMenuItem(value: gender, child: Text(gender)),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedGender = value;
                  });
                },
                decoration: const InputDecoration(
                  // border: OutlineInputBorder(),
                  hintText: 'Select Gender',
                ),
              ),

              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0095FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 14,
                    ),
                    elevation: 4,
                  ),
                  onPressed: () {
                    if (selectedGender != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfleeditScreen(),
                        ),
                      );

                      // You can navigate or use this value as needed
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Please select a gender")),
                      );
                    }
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
