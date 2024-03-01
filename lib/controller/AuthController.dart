import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:smartmediation/core/appkey.dart';
import 'package:smartmediation/core/constant.dart';
import 'package:smartmediation/core/function/CRUD.dart';
import 'package:smartmediation/core/function/HandlingGetData.dart';
import 'package:smartmediation/view/widgets/global/snackbarDialog.dart';
import 'package:smartmediation/core/models/statusRequest.dart';
import 'package:smartmediation/core/services/myServices.dart';

class LoginController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  GlobalKey<FormState> key = GlobalKey<FormState>();
  MyServices services = Get.find();
  CRUD crud = CRUD();
  bool issecure = true;
  changePasswordstateLogin() {
    print('1');
    if (issecure == true) {
      issecure = false;
      update();
    } else {
      issecure = true;
      update();
    }
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  checkuser() async {
    // var response = await crud
    //     .read(checkAccount, {'email': 'admin@gmail.com', 'password': 'admin'});
    // var request = HandlingGetData(response);
    // if (request == StatuSRequest.Success) {
    //   if (response['result'] > 0) {
    if (services.sharedPreferences.getString('account') == 'company') {
      Get.offAllNamed(AppKey.companykey);
    } else if (services.sharedPreferences.getString('account') ==
        'individual') {
      Get.offAllNamed(AppKey.individualkey);
    } else {
      print('No User found');
    }
    // }
    // }
  }

  goToRegester() {
    Get.offNamed(AppKey.RegesterKey);
  }

  ForgetPassord() {
    Get.toNamed(AppKey.forgetPasswordkey);
  }

  @override
  void onClose() {
    emailController.clear();
    passwordController.clear();
    super.onClose();
  }
}

class RegesterController extends GetxController {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  CRUD crud = CRUD();
  TextEditingController? emailController;
  TextEditingController? passwordController;
  TextEditingController? nameController;
  TextEditingController? phoneController;
  late StatuSRequest statuSRequest;
  MyServices services = Get.find();
  bool issecure = true;
  AuthController Auth_cont = Get.find();

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    phoneController = TextEditingController();
    super.onInit();
  }

  changePasswordstateRegester() {
    print('1');
    if (issecure == true) {
      issecure = false;
      update();
    } else {
      issecure = true;
      update();
    }
  }

  addUser() async {
    statuSRequest = StatuSRequest.Loading;
    if (key.currentState!.validate()) {
      var response = await crud.add(SignUp_Adduser, {
        'name': nameController!.text.toString(),
        'email': emailController!.text.toString(),
        'password': passwordController!.text.toString(),
        'phone': phoneController!.text.toString(),
        'approve': '0',
      });

      var checkResponse = HandlingGetData(response);
      if (checkResponse == StatuSRequest.Success) {
        statuSRequest = StatuSRequest.Success;
        print('succes');
        services.sharedPreferences
            .setString('name', nameController!.text.toString());

        services.sharedPreferences
            .setString('email', emailController!.text.toString());
        Get.offNamed(AppKey.loginKey);
        showsnackbar('Account has been created', 2);
      } else {
        statuSRequest = StatuSRequest.ServerFailure;
      }

      print(response);
    }
  }
}

class checkCodeController extends GetxController {
  MyServices srvices = Get.find();

  goToRedefinePasswrod() {
    Get.offNamed(AppKey.ReDefinePasswordkey);
  }
}

class ForgetPasswordController extends GetxController {
  MyServices srvices = Get.find();

  late TextEditingController emailController;
  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }

  checkCode() {
    if (key.currentState!.validate()) {
      Get.toNamed(AppKey.checkCodekey);
    } else {}
  }
}

class RedefinePasswordController extends GetxController {
  late TextEditingController newpassword;
  late TextEditingController newpassword2;
  MyServices srvices = Get.find();

  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  void onInit() {
    newpassword = TextEditingController();
    newpassword2 = TextEditingController();

    super.onInit();
  }

  checkCode() {
    if (key.currentState!.validate()) {
      if (newpassword.text == newpassword2.text) {
        showsnackbar('Password Update succesfuly', 1);
        Get.offAllNamed(AppKey.loginKey);
      }
    } else {}
  }
}

class AuthController extends GetxController {
  MyServices services = Get.find();

  List togglename = ['Sign In', 'Sign Up'];

  bool issecure = true;
  changePasswordstate() {
    print('1');
    if (issecure == true) {
      issecure = false;
      update();
    } else {
      issecure = true;
      update();
    }
  }

  @override
  void onInit() {
    print(services.sharedPreferences.getString('account'));

    super.onInit();
  }
}
