import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartmediation/core/constant.dart';
import 'package:smartmediation/data/locale/BottomNavigation_data.dart';

import '../../../controller/individua;Controller/IndividualController.dart';

class individualPart extends StatelessWidget {
  const individualPart({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(IndividualController());

    return GetBuilder<IndividualController>(
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
          body: GetBuilder<IndividualController>(
              builder: (controller) => controller
                  .IndividualPageController[controller.selectedIndex])),
    );
  }
}
