import 'package:flutter/material.dart';
import 'package:news_app/pages/ProfleEdit_screen.dart';

class ChangecountrynameScreen extends StatefulWidget {
  const ChangecountrynameScreen({super.key});

  @override
  State<ChangecountrynameScreen> createState() =>
      _ChangecountrynameScreenState();
}

class _ChangecountrynameScreenState extends State<ChangecountrynameScreen> {
  final List<String> countryOptions = ['Pakistan', 'India', 'US', 'UK'];
  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Account Settings"),
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
                'Your country',
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                'Select your country',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 10),

              // Dropdown as TextField style
              DropdownButtonFormField<String>(
                value: selectedCountry,
                items: countryOptions
                    .map(
                      (country) => DropdownMenuItem(
                        value: country,
                        child: Text(country),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value;
                  });
                },
                decoration: const InputDecoration(
                  hintText: 'Select Country',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
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
                    if (selectedCountry != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfleeditScreen(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Please select a country"),
                        ),
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
