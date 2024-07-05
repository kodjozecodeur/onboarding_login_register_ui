import 'package:flutter/material.dart';

class MyIconBox extends StatelessWidget {
  final String imagePath;
  const MyIconBox({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFECECEC),
      ),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
