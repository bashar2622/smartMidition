import 'package:flutter/material.dart';
import 'package:smartmediation/controller/compnatController/CompnayController.dart';

CompanyController controller = CompanyController();
List<BottoModel> BottomnavigationBarData = [
  BottoModel(Icon(Icons.home), 'Home', () => controller.selectedIndex = 0),
  BottoModel(Icon(Icons.person), 'profile', () => controller.selectedIndex = 1)
];

class BottoModel {
  String text;
  Icon icon;
  Function() func;
  BottoModel(this.icon, this.text, this.func);
}
