import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:smartmediation/view/screens/Company_Part/homeCompany.dart';

class CompanyController extends GetxController {
  int selectedIndex = 0;

  List ComapnyPageController = [
    HomeCompnay(),
    Container(),
  ];

  changePageView(int index) {
    selectedIndex = index;

    update();
  }
}

class HomeController extends GetxController {
  // double valuee = 0.0;

  // @override
  // void onInit() async {
  //   await changevalue();
  //   super.onInit();
  // }

  // changevalue() async {
  //   await Future.delayed(Duration(seconds: 2)).then((value) => {valuee = 1.0});
  //   update();
  // }

  @override
  void onClose() {
    super.onClose();
  }
}
