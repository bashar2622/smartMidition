import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartmediation/controller/AuthController.dart';
import 'package:smartmediation/core/constant.dart';
import 'package:smartmediation/view/widgets/global/GradiantText.dart';
import 'package:smartmediation/view/widgets/global/customButton.dart';
import 'package:smartmediation/view/widgets/global/customMainTitle.dart';
import 'package:smartmediation/view/widgets/global/customTextFiled.dart';
import 'package:smartmediation/view/widgets/global/customsmalltTitle.dart';
import 'package:smartmediation/view/widgets/global/customtpaddingWidget.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    AuthController Auth_contr = Get.put(AuthController());
    return Scaffold(
        body: GetBuilder<LoginController>(
            builder: (controller) => Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultpadding),
                  child: ListView(
                    children: [
                      Image.asset(
                        myLogo,
                        width: Get.width / 2,
                        height: Get.width / 2,
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: CustomMainTitle(title: 'Sign In')),
                      Custompaddingwidget(value: defaultpadding),
                      customSmallTitle(
                          title: 'Sign In to cotinue to your driblling account',
                          color: thirdColor),
                      Custompaddingwidget(value: defaultpadding),
                      customTextField(
                          label: 'Email',
                          textcontroller: controller.emailController,
                          valid: (p0) => null,
                          icon: Icon(Icons.email)),
                      Custompaddingwidget(value: defaultpadding),
                      customTextField(
                          label: 'Password',
                          textcontroller: controller.passwordController,
                          valid: (p0) => null,
                          icon: Icon(Icons.password),
                          ispassword: true,
                          valid2: () {
                            Auth_contr.changePasswordstate();
                          }),
                      Custompaddingwidget(value: defaultpadding),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                            onTap: () {
                              controller.ForgetPassord();
                            },
                            child: customSmallTitle(
                                title: 'Forget Password ?', color: thirdColor),
                          )),
                      Custompaddingwidget(value: defaultpadding),
                      InkWell(
                          onTap: () {
                            controller.checkuser();
                          },
                          child: CustomButton(title: 'Login', color: SixColor)),
                      Custompaddingwidget(value: defaultpadding),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            customSmallTitle(
                                title: 'Dont\'t Have An Account ? ',
                                color: thirdColor),
                            InkWell(
                                onTap: () {
                                  controller.goToRegester();
                                },
                                child: GradientWidget(
                                  customSmallTitle(
                                      title: 'Regester Here !',
                                      color: SixColor),
                                  gradient: LinearGradient(
                                      colors: [SixColor, SevenColor]),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                )));
  }
}
