
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class subpage extends StatelessWidget {
  final String imagePath;
  final String title;

  subpage({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}