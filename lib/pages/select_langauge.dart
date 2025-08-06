import 'package:flutter/material.dart';
import 'package:news_app/pages/onboarding_screen2.dart';

class LanguagePickerScreen extends StatefulWidget {
  @override
  _LanguagePickerScreenState createState() => _LanguagePickerScreenState();
}

class _LanguagePickerScreenState extends State<LanguagePickerScreen> {
  final List<String> allLanguages = [
    "English",
    "Urdu",
    "Pashto",
    "Arabic",
    "Hindi",
    "Turkish",
    "French",
  ];
  List<String> selectedLanguages = [];
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final filteredLanguages = allLanguages
        .where((lang) => lang.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Colors.white,
        title: Text("My Language"),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              // Go back without returning anything
              Navigator.pop(context);
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 4.9,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),
              child: MaterialButton(
                // color: Colors.blue,
                minWidth: MediaQuery.of(context).size.width / 1,
                height: MediaQuery.of(context).size.height * 0.07,
                // color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LanguageSelectorMain(),
                    ),
                  );
                },
                child: Text(
                  "Done",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              onChanged: (val) => setState(() => searchQuery = val),
              decoration: InputDecoration(
                hintText: "Search language",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                fillColor: const Color.fromARGB(255, 255, 255, 255),
                filled: true,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: filteredLanguages.map((lang) {
                final isSelected = selectedLanguages.contains(lang);
                return ListTile(
                  title: Text(lang),
                  trailing: isSelected
                      ? Icon(Icons.check_circle, color: Colors.blue)
                      : Icon(Icons.circle_outlined),
                  onTap: () {
                    setState(() {
                      if (isSelected) {
                        selectedLanguages.remove(lang);
                      } else {
                        selectedLanguages.add(lang);
                      }
                    });
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
