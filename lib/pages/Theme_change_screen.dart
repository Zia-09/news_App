import 'package:flutter/material.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

enum ThemeOption { day, night, auto }

class _ThemeScreenState extends State<ThemeScreen> {
  ThemeOption _selectedOption = ThemeOption.day;

  Widget buildOption(String title, ThemeOption option) {
    return ListTile(
      title: Text(title),
      trailing: _selectedOption == option
          ? const Icon(Icons.check_circle, color: Colors.blue)
          : const SizedBox.shrink(),
      onTap: () {
        setState(() {
          _selectedOption = option;
        });
      },
    );
  }

  Widget buildAutoTimeInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        children: const [
          Icon(Icons.access_time, size: 20, color: Colors.grey),
          SizedBox(width: 8),
          Text(
            "Your day time mode: 6:00 AM to 6:00 PM",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Theme", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildOption("Day", ThemeOption.day),
          const Divider(),
          buildOption("Night", ThemeOption.night),
          const Divider(),
          buildOption("Auto", ThemeOption.auto),
          if (_selectedOption == ThemeOption.auto) buildAutoTimeInfo(),
          Divider(),
        ],
      ),
    );
  }
}
