import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        'assets/note.png',
        width: Get.width / 4,
        height: Get.height / 4,
      ),
    );
  }
}
