import 'package:flutter/material.dart';

class customSmallTitle extends StatelessWidget {
  final String title;
  final Color color;
  const customSmallTitle({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: color),
    );
  }
}
