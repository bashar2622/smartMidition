import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartmediation/core/constant.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? ontap;
  final Color color;
  const CustomButton(
      {super.key, required this.title, this.ontap, required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          height: Get.width / 10,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: defaultpadding / 2),
          child: Text(
            title,
            style:
                TextStyle(color: backgroundcolor, fontWeight: FontWeight.bold),
          ),
          decoration: BoxDecoration(
            color: color,
            gradient: LinearGradient(
                colors: [SixColor, SevenColor],
                begin: Alignment.topLeft,
                end: Alignment.topRight),
            borderRadius: BorderRadius.circular(defaultpadding),
          )),
    );
  }

  
}
