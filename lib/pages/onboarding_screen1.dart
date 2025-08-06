import 'package:flutter/material.dart';
import 'package:news_app/signup/signup_screen.dart';

class OnboardingScreen1 extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen1> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  final List<String> titles = [
    'Trending News',
    'React, Save & Share News',
    'Videos & Live News From YouTube',
    'Browse News From Variety Of Categories',
  ];

  final List<String> images = [
    'images/news.png',
    'images/react.png',
    'images/live.png',
    'images/browse.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: titles.length,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {
                          _controller.jumpToPage(titles.length - 1);
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                    ),
                    // Spacer(),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Image.asset(
                        images[index], // Unique image for each screen
                        height: 200,
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        titles[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              );
            },
          ),

          // Page Indicator
          Positioned(
            bottom: 170,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(titles.length, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: currentIndex == index ? 12 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: currentIndex == index ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              }),
            ),
          ),

          // Bottom Buttons
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        "Continue with Email",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.g_mobiledata,
                        color: Colors.red,
                        size: 44,
                      ),
                    ),
                    // SocialButton(
                    //   icon: Icons.g_mobiledata,
                    //   label: 'Google',
                    //   onPressed: () {},
                    //   color: Colors.grey,
                    // ),
                    SizedBox(width: 10),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.facebook, color: Colors.blue, size: 38),
                    ),

                    // SocialButton(
                    //   icon: Icons.facebook,
                    //   label: 'Facebook',
                    //   onPressed: () {},
                    //   color: Colors.blue[800]!,
                    // ),
                    SizedBox(width: 10),

                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.alternate_email,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),

                    // SocialButton(
                    //   icon: Icons.alternate_email,
                    //   label: 'Twitter',
                    //   onPressed: () {},
                    //   color: Colors.lightBlue,
                    // ),
                  ],
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Custom Social Button Widget
class SocialButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final Color color;

  const SocialButton({
    required this.icon,
    required this.label,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.white),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(100, 40),
        padding: EdgeInsets.symmetric(horizontal: 10),
      ),
    );
  }
}
