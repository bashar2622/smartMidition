
import 'package:flutter/material.dart';

class CustomMainTitle extends StatelessWidget {
  final String title;
  const CustomMainTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
