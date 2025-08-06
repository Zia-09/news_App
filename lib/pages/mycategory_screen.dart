import 'package:flutter/material.dart';

class MycategoryScreen extends StatelessWidget {
  const MycategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Category"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            SizedBox(height: 10),
            Text(
              "Customize “My News” category",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Material(
                  elevation: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 251, 250, 250),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.list, size: 30),
                      title: Text(
                        "All",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      trailing: Icon(Icons.star_border, size: 30),
                    ),
                  ),
                ),
                Material(
                  elevation: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.17,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 251, 250, 250),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.color_lens_rounded, size: 30),
                      title: Text(
                        "Weather",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      trailing: Icon(Icons.star_border, size: 30),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Material(
                  elevation: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 251, 250, 250),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.business_center, size: 30),
                      title: Text(
                        "Busines",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                      trailing: Icon(Icons.star_border, size: 30),
                    ),
                  ),
                ),
                Material(
                  elevation: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.17,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 251, 250, 250),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.color_lens_rounded, size: 30),
                      title: Text(
                        "Entmt",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      trailing: Icon(Icons.star_border, size: 30),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Material(
                  elevation: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 251, 250, 250),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.gesture_rounded, size: 30),
                      title: Text(
                        "General",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                      trailing: Icon(Icons.star_border, size: 30),
                    ),
                  ),
                ),
                Material(
                  elevation: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.17,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 251, 250, 250),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.health_and_safety, size: 30),
                      title: Text(
                        "Health",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      trailing: Icon(Icons.star_border, size: 30),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Material(
                  elevation: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 251, 250, 250),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.local_fire_department_rounded,
                        size: 30,
                      ),
                      title: Text(
                        "Lifestyle",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                      trailing: Icon(Icons.star_border, size: 30),
                    ),
                  ),
                ),
                Material(
                  elevation: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.17,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 251, 250, 250),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.type_specimen, size: 30),
                      title: Text(
                        "Science",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      trailing: Icon(Icons.star_border, size: 30),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Material(
                  elevation: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 251, 250, 250),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.sports_baseball, size: 30),
                      title: Text(
                        "Sports",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                      trailing: Icon(Icons.star_border, size: 30),
                    ),
                  ),
                ),
                Material(
                  elevation: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.17,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 251, 250, 250),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.science, size: 30),
                      title: Text(
                        "Tech",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      trailing: Icon(Icons.star_border, size: 30),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
