import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartmediation/core/constant.dart';

showsnackbar(
  String account,
  int duration,
) async {
  await Future.delayed(Duration(microseconds: 500)).then(
    (value) => Get.snackbar(
      '',
      '',
      colorText: primeColor,
      titleText: Text(account),
      animationDuration: Duration(seconds: duration),
    ),
  );
}
