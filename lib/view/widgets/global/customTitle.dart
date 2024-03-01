import 'package:flutter/material.dart';

class Customtitle extends StatelessWidget {
  final String title;
  final Color color;
  final double size;
  final FontWeight isBold;
  final double letterSpase;
  final double wordSpace;
  const Customtitle(
      {super.key,
      required this.title,
      required this.color,
      required this.size,
      required this.isBold,
      required this.letterSpase,
      required this.wordSpace});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 5,
      softWrap: false,
      style: TextStyle(
          letterSpacing: letterSpase,
          color: color,
          wordSpacing: wordSpace,
          fontSize: size,
          overflow: TextOverflow.ellipsis,
          fontWeight: isBold),
    );
  }
}
