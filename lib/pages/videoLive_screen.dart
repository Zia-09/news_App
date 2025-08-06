import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoliveScreen extends StatefulWidget {
  const VideoliveScreen({super.key});

  @override
  State<VideoliveScreen> createState() => _VideoliveScreenState();
}

class _VideoliveScreenState extends State<VideoliveScreen> {
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
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.47,
                      // width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        // borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            // borderRadius: BorderRadius.circular(20),
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
                          SizedBox(width: 10),
                          Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Padding(
                              //   // padding: EdgeInsets.only(left: 20, right: 20),
                              // ),
                              Text(
                                "The fate of millions of Americans\n rests on Biden's economic team",
                                style: TextStyle(
                                  fontSize: 21,
                                  // fontWeight: FontWeight.w300,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 20),
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
                              Divider(),

                              // Divider(),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 20),
                              CircleAvatar(
                                radius: 22,
                                backgroundImage: AssetImage("images/new.webp"),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "News18",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.13,
                            width: MediaQuery.of(context).size.width * 0.43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
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
                          ),
                        ),
                        SizedBox(width: 5),
                        Column(
                          children: [
                            Text(
                              "Meet the women behind\n the india's best bar",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.026,
                            ),
                            // Spacer(),
                            Text(
                              "4 mint ago  calum Trenaman",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.13,
                            width: MediaQuery.of(context).size.width * 0.43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
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
                          ),
                        ),
                        SizedBox(width: 5),
                        Column(
                          children: [
                            Text(
                              "Meet the women behind\n the india's best bar",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.026,
                            ),
                            // Spacer(),
                            Text(
                              "4 mint ago  calum Trenaman",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.13,
                            width: MediaQuery.of(context).size.width * 0.43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
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
                          ),
                        ),
                        SizedBox(width: 5),
                        Column(
                          children: [
                            Text(
                              "Meet the women behind\n the india's best bar",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.026,
                            ),
                            // Spacer(),
                            Text(
                              "4 mint ago  calum Trenaman",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.13,
                            width: MediaQuery.of(context).size.width * 0.43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
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
                          ),
                        ),
                        SizedBox(width: 5),
                        Column(
                          children: [
                            Text(
                              "Meet the women behind\n the india's best bar",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.026,
                            ),
                            // Spacer(),
                            Text(
                              "4 mint ago  calum Trenaman",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.13,
                            width: MediaQuery.of(context).size.width * 0.43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
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
                          ),
                        ),
                        SizedBox(width: 5),
                        Column(
                          children: [
                            Text(
                              "Meet the women behind\n the india's best bar",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.026,
                            ),
                            // Spacer(),
                            Text(
                              "4 mint ago  calum Trenaman",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.black38,
                              ),
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
