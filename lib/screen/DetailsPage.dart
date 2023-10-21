import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class DetailsPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String videoUrl;

  DetailsPage({required this.imagePath, required this.title, required this.videoUrl});

  void _launchYouTubeVideo(String videoUrl) async {
    if (await canLaunch(videoUrl)) {
      await launch(videoUrl);
    } else {
      throw 'ไม่สามารถเปิดลิงค์: $videoUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                ListTile(
                  subtitle: Text('RIIZE - SIREN MV'),
                  onTap: () {
                    _launchYouTubeVideo(
                        'https://youtu.be/tZYsvAoSNxQ?si=kTUCv53wfdmJY84j');
                  },
                ),
                ListTile(
                  subtitle: Text('RIIZE - MEMORIES MV'),
                  onTap: () {
                    _launchYouTubeVideo(
                        'https://youtu.be/2H0duKgnYgE?si=Vu_UmfFhJIMNcdG7');
                  },
                ),
                ListTile(
                  subtitle: Text('RIIZE - Get A Guitar MV'),
                  onTap: () {
                    _launchYouTubeVideo(
                        'https://youtu.be/iUw3LPM7OBU?si=__dOu_i7ZVGCND0c');
                  },
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}