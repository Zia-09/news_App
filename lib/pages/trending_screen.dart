import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TrendingScreen extends StatefulWidget {
  const TrendingScreen({super.key});

  @override
  State<TrendingScreen> createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {
  final List<String?> _selectedReactions = [null, null];

  void _copyLink(BuildContext context) {
    Clipboard.setData(
      const ClipboardData(
        text: 'https://youtu.be/sNYJioM1ktE?si=gTzKyHKH7Ia7DNbP',
      ),
    );
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Link copied to clipboard")));
  }

  void _showShareOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _shareIcon(context, Icons.whatshot, 'WhatsApp', Colors.green),
                _shareIcon(context, Icons.facebook, 'Facebook', Colors.blue),
                _shareIcon(context, Icons.message, 'Messenger', Colors.indigo),
                _shareIcon(
                  context,
                  Icons.ondemand_video,
                  'YouTube',
                  Colors.red,
                ),
                _shareIcon(context, Icons.more_horiz, 'More', Colors.grey),
              ],
            ),
          ),
        );
      },
    );
  }

  static Widget _shareIcon(
    BuildContext context,
    IconData icon,
    String label,
    Color color,
  ) {
    return GestureDetector(
      onTap: () {
        Share.share(
          'Check this out: https://youtu.be/sNYJioM1ktE?si=gTzKyHKH7Ia7DNbP',
        );
        Navigator.pop(context);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(0.2),
            child: Icon(icon, color: color),
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  void _showReactions(BuildContext context, int index) {
    const reactions = ['👍', '❤️', '😂', '😢', '😲'];
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: reactions.map((emoji) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedReactions[index] = emoji;
                  });
                  Navigator.pop(context);
                },
                child: Text(emoji, style: const TextStyle(fontSize: 30)),
              );
            }).toList(),
          ),
        );
      },
    );
  }

  Widget _newsCard(BuildContext context, String youtubeUrl, int index) {
    final videoId = YoutubePlayer.convertUrlToId(youtubeUrl);
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId ?? '',
      flags: const YoutubePlayerFlags(autoPlay: false, mute: false),
    );

    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // YouTube Video Player instead of static image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.red,
            ),
          ),

          const Padding(padding: EdgeInsets.all(12)),

          // Author info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage('images/new.webp'),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'A protester carries the Confederate flag\nafter breaching US Capitol security',
                    style: TextStyle(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Bottom actions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: _selectedReactions[index] == null
                      ? const Icon(Icons.thumb_up_alt_outlined, size: 24)
                      : Text(
                          _selectedReactions[index]!,
                          style: const TextStyle(fontSize: 24),
                        ),
                  onPressed: () => _showReactions(context, index),
                ),
                IconButton(
                  icon: const Icon(Icons.bookmark_border),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.copy),
                  onPressed: () => _copyLink(context),
                ),
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () => _showShareOptions(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final videoUrls = [
      'https://youtu.be/sNYJioM1ktE?si=gTzKyHKH7Ia7DNbP',
      'https://youtu.be/sNYJioM1ktE?si=gTzKyHKH7Ia7DNbP',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        itemCount: videoUrls.length,
        itemBuilder: (context, i) => _newsCard(context, videoUrls[i], i),
      ),
    );
  }
}
