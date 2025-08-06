import 'package:flutter/material.dart';

class MylanguagesScreen extends StatefulWidget {
  const MylanguagesScreen({super.key});

  @override
  State<MylanguagesScreen> createState() => _MylanguagesScreenState();
}

class _MylanguagesScreenState extends State<MylanguagesScreen> {
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
      appBar: AppBar(
        title: const Text("My Language"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              TextField(
                onChanged: (val) => setState(() => searchQuery = val),
                decoration: InputDecoration(
                  hintText: "Search language",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.clear),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                ),
              ),
              SizedBox(height: 10),
              Divider(),
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
              // Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
