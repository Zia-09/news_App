import 'package:flutter/material.dart';
import 'package:news_app/pages/videoLive_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late YoutubePlayerController _controller1;
  late YoutubePlayerController _controller2;
  late YoutubePlayerController _controller3;

  @override
  void initState() {
    super.initState();

    final id1 = YoutubePlayer.convertUrlToId(
      'https://www.youtube.com/watch?v=2Vv-BfVoq4g',
    );
    final id2 = YoutubePlayer.convertUrlToId(
      'https://youtu.be/5SeENYdal4o?si=9E9wjmkzZ158yyE5',
    );
    final id3 = YoutubePlayer.convertUrlToId(
      'https://www.youtube.com/watch?v=aqz-KE-bpKQ',
    );

    if (id1 == null || id2 == null || id3 == null) {
      throw Exception("Invalid YouTube URL(s)");
    }

    _controller1 = YoutubePlayerController(
      initialVideoId: id1,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );

    _controller2 = YoutubePlayerController(
      initialVideoId: id2,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );

    _controller3 = YoutubePlayerController(
      initialVideoId: id3,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Video",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Divider(),
              Text(
                "Live News",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("images/new.webp"),
                              ),
                              Text(
                                "Zee News",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                  "images/today.webp",
                                ),
                              ),
                              Text(
                                "Today News",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("images/time.webp"),
                              ),
                              Text(
                                "Time News",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("images/gazi.webp"),
                              ),
                              Text(
                                "gazi News",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("images/news.png"),
                              ),
                              Text(
                                "Ajj News",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Recommend",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VideoliveScreen()),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  // width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: YoutubePlayer(
                          controller: _controller1,
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.red,
                          progressColors: ProgressBarColors(
                            playedColor: Colors.red,
                            handleColor: Colors.redAccent,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("images/new.webp"),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The fate of millions of Americans\n rests on Biden's economic team",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "5 hour ago",
                                    style: TextStyle(color: Colors.black38),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height *
                                        0.02,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black38),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "News18",
                                    style: TextStyle(color: Colors.black38),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                // width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: YoutubePlayer(
                        controller: _controller2,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.red,
                        progressColors: ProgressBarColors(
                          playedColor: Colors.red,
                          handleColor: Colors.redAccent,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("images/new.webp"),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The fate of millions of Americans\n rests on Biden's economic team",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "5 hour ago",
                                  style: TextStyle(color: Colors.black38),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black38),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "News18",
                                  style: TextStyle(color: Colors.black38),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                // width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: YoutubePlayer(
                        controller: _controller3,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.red,
                        progressColors: ProgressBarColors(
                          playedColor: Colors.red,
                          handleColor: Colors.redAccent,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("images/new.webp"),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The fate of millions of Americans\n rests on Biden's economic team",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "5 hour ago",
                                  style: TextStyle(color: Colors.black38),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black38),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "News18",
                                  style: TextStyle(color: Colors.black38),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
