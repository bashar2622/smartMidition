import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartmediation/core/appkey.dart';
import 'package:smartmediation/core/services/myServices.dart';

class Mymiddlwware extends GetMiddleware {
  MyServices services = Get.find();
  @override
  set priority(int? _priority) {}

  @override
  RouteSettings? redirect(String? route) {
    if (services.sharedPreferences.getInt('CheckAccount') == 1) {
      return RouteSettings(name: AppKey.AuthScreen);
    } else {
      return null;
    }
  }
}
