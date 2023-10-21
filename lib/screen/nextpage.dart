import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_final/screen/DetailsPage.dart';

class NextPage extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/images/shotaro.jpg',
    'assets/images/eunseok.jpg',
    'assets/images/sungchan.jpg',
    'assets/images/wonbin.jpg',
    'assets/images/seunghan.jpg',
    'assets/images/sohee2.jpg',
    'assets/images/anton2.jpg',
  ];

  final List<String> titles = [
    'SHOTARO',
    'EUNSEOK',
    'SUNGCHAN',
    'WONBIN',
    'SEUNGHAN',
    'SOHEE',
    'ANTON',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RIIZE MEMBERS'),
      ),
      body: ListView.builder(
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return _buildCard(context, imagePaths[index], titles[index],);
        },
      ),
    );
  }

  Widget _buildCard(BuildContext context, String imagePath, String title) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailsPage(imagePath: imagePath, title: title, videoUrl: '',),
        ));
      },
      child: Card(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 500,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}