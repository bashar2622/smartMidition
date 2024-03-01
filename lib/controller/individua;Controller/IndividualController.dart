import 'package:get/get.dart';
import 'package:smartmediation/view/screens/Individual_part/HomeIndividual.dart';

import '../../view/screens/Individual_part/profileScreen.dart';

class IndividualController extends GetxController {
  int selectedIndex = 0;

  List IndividualPageController = [
    HomeIndividual(),
    profileScreen(),
  ];

  changePageView(int index) {
    selectedIndex = index;

    update();
  }
}

class HomeController extends GetxController {
  double valuee = 0.0;

  @override
  void onInit() async {
    await changevalue();
    super.onInit();
  }

  changevalue() async {
    await Future.delayed(Duration(seconds: 2)).then((value) => {valuee = 1.0});
    update();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
