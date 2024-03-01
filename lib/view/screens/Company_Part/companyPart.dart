import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartmediation/core/constant.dart';
import 'package:smartmediation/data/locale/BottomNavigation_data.dart';

import '../../../controller/compnatController/CompnayController.dart';

class CompnayPart extends StatelessWidget {
  const CompnayPart({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CompanyController());

    return GetBuilder<CompanyController>(
      builder: (controller) => Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              onTap: (int value) => controller.changePageView(value),
              selectedIconTheme: IconThemeData(color: secondColor),
              showSelectedLabels: true,
              showUnselectedLabels: false,
              currentIndex: controller.selectedIndex,
              items: List.generate(
                  BottomnavigationBarData.length,
                  (index) => BottomNavigationBarItem(
                      backgroundColor: FiveColor,
                      icon: BottomnavigationBarData[index].icon,
                      label: BottomnavigationBarData[index].text))),
          body: GetBuilder<CompanyController>(
              builder: (controller) =>
                  controller.ComapnyPageController[controller.selectedIndex])),
    );
  }
}
