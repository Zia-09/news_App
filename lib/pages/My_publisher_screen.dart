import 'package:flutter/material.dart';

class MyPublisherScreen extends StatefulWidget {
  const MyPublisherScreen({super.key});

  @override
  State<MyPublisherScreen> createState() => _MyPublisherScreenState();
}

class _MyPublisherScreenState extends State<MyPublisherScreen> {
  final List<Map<String, dynamic>> publishers = [
    {'name': 'News Nation', 'icon': 'images/gazi.webp'},
    {'name': 'Times Of India', 'icon': 'images/karata.webp'},
    {'name': 'India Today', 'icon': 'images/new.webp'},
    {'name': 'NDTV', 'icon': 'images/today.webp'},
    {'name': 'Gadgets Now', 'icon': 'images/gazi.webp'},
    {'name': 'Swirlster', 'icon': 'images/time.webp'},
    {'name': 'BBC News', 'icon': 'images/karata.webp'},
    {'name': 'CNN', 'icon': 'images/new.webp'},
    {'name': 'Geo News', 'icon': 'images/time.webp'},
    {'name': 'ARY News', 'icon': 'images/today.webp'},
  ];

  Set<String> selectedItems = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Publisher"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.clear),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                  ),
                ),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 20),
                Text(
                  "Customize news across all categories",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          for (var item in publishers)
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(item['icon']),
                // backgroundColor: Colors.grey[200],
              ),
              title: Text(item['name']),
              trailing: Icon(
                selectedItems.contains(item['name'])
                    ? Icons.check_circle
                    : Icons.radio_button_unchecked,
                color: selectedItems.contains(item['name'])
                    ? Colors.blue
                    : Colors.grey,
              ),
              onTap: () {
                setState(() {
                  if (selectedItems.contains(item['name'])) {
                    selectedItems.remove(item['name']);
                  } else {
                    selectedItems.add(item['name']);
                  }
                });
              },
            ),
        ],
      ),
    );
  }
}
