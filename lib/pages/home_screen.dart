// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:news_app/pages/HomeNotification_Screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    const videoId =
        'https://youtu.be/5SeENYdal4o?si=RKmJmiV6io-0XthH'; // Replace this with your actual video ID

    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(autoPlay: true, mute: true),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final PageController _pageController = PageController();
  int _currentIndex = 0;

  List<String> imagePaths = [
    'https://upload.wikimedia.org/wikipedia/commons/5/56/Donald_Trump_official_portrait.jpg',
    'https://example.com/moody_seated.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Official_Presidential_Portrait_of_President_Donald_J._Trump_%282025%29.jpg/960px-Official_Presidential_Portrait_of_President_Donald_J._Trump_%282025%29.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      'My News',
      'World',
      'Business',
      'Health',
      'Travel',
    ];
    int selectedIndex = 0;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * 0.7,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemCount: imagePaths.length,
                    onPageChanged: (index) {
                      setState(() => _currentIndex = index);
                    },
                    itemBuilder: (context, index) {
                      return Image.network(
                        imagePaths[index],
                        width: double.infinity,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, progress) {
                          if (progress == null) return child;
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Text(
                              "Image failed to load",
                              style: TextStyle(color: Colors.red),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  Positioned(
                    bottom: 12,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(imagePaths.length, (index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: _currentIndex == index ? 9 : 8,
                          height: _currentIndex == index ? 8 : 8,
                          decoration: BoxDecoration(
                            color: _currentIndex == index
                                ? const Color.fromARGB(255, 18, 10, 252)
                                : Colors.white,
                            shape: BoxShape.circle,
                          ),
                        );
                      }),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(categories.length, (index) {
                        final isSelected = selectedIndex == index;
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                categories[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: isSelected
                                      ? Colors.blue
                                      : Colors.white,
                                  decoration: isSelected
                                      ? TextDecoration.underline
                                      : TextDecoration.none,
                                  decorationColor: Colors.blue,
                                  decorationThickness: 2,
                                ),
                              ),
                              SizedBox(height: 4),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Spacer(),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 28,
                              backgroundImage: AssetImage("images/new.webp"),
                            ),
                            SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "News18",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "1h | US & Canada",
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Trump presidency's final days: 'In his mind, he will not have lost'",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.thumb_up_off_alt, color: Colors.white),
                            Icon(Icons.bookmark_border, color: Colors.white),
                            Icon(Icons.copy, color: Colors.white),
                            Icon(Icons.share_rounded, color: Colors.white),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          children: [
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        HomenotificationScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "View all",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Icon(Icons.arrow_forward, color: Colors.blue),
                          ],
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Trending",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Text("Trending-1"),
                                  color: const Color.fromARGB(
                                    255,
                                    237,
                                    235,
                                    235,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              MaterialButton(
                                onPressed: () {},
                                child: Text("Trending-2"),
                                color: const Color.fromARGB(255, 237, 235, 235),
                              ),
                              SizedBox(width: 20),
                              MaterialButton(
                                onPressed: () {},
                                child: Text("Trending-3"),
                                color: const Color.fromARGB(255, 237, 235, 235),
                              ),
                              SizedBox(width: 20),
                              MaterialButton(
                                onPressed: () {},
                                child: Text("Trending-4"),
                                color: const Color.fromARGB(255, 237, 235, 235),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "My News",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
