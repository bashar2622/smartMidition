import 'package:get/get.dart';
import 'package:smartmediation/core/appkey.dart';
import 'package:smartmediation/view/widgets/global/snackbarDialog.dart';
import 'package:smartmediation/core/services/myServices.dart';

class chooseAccountContreoller extends GetxController {
  MyServices services = Get.find();
  List account = ['individual', 'company'];
  goToLogin(String accountt) {
    Get.toNamed(AppKey.loginKey);
    services.sharedPreferences.setString('account', accountt);
    services.sharedPreferences.setInt('CheckAccount', 1);
    showsnackbar('You Are Enter as ${accountt} Account ', 1);
  }
}
