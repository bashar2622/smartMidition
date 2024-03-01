import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartmediation/controller/AuthController.dart';
import 'package:smartmediation/core/appkey.dart';
import 'package:smartmediation/core/constant.dart';
import 'package:smartmediation/core/function/Validator.dart';
import 'package:smartmediation/view/widgets/global/GradiantText.dart';
import 'package:smartmediation/view/widgets/global/customButton.dart';
import 'package:smartmediation/view/widgets/global/customMainTitle.dart';
import 'package:smartmediation/view/widgets/global/customTextFiled.dart';
import 'package:smartmediation/view/widgets/global/customsmalltTitle.dart';
import 'package:smartmediation/view/widgets/global/customtpaddingWidget.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    RegesterController controller = Get.put(RegesterController());
    AuthController Auth_contr = Get.put(AuthController());
    return Scaffold(
      body: GetBuilder<RegesterController>(
          builder: (controler) => Container(
                margin: EdgeInsets.symmetric(horizontal: defaultpadding),
                child: Form(
                  key: controller.key,
                  child: ListView(
                    children: [
                      Image.asset(
                        myLogo,
                        width: Get.width / 2,
                        height: Get.width / 2,
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: CustomMainTitle(title: 'Sign UP')),
                      Custompaddingwidget(value: defaultpadding),
                      customSmallTitle(
                          title:
                              'Sign Up With your Email and password Or Continue With Social Media .',
                          color: thirdColor),
                      Custompaddingwidget(value: defaultpadding),
                      customTextField(
                          label: 'Name',
                          textcontroller: controller.nameController,
                          valid: (p0) => validator(
                              controller.nameController!.text.toString(),
                              'name',
                              4,
                              50),
                          ispassword: false,
                          icon: Icon(Icons.person)),
                      Custompaddingwidget(value: defaultpadding),
                      customTextField(
                          label: 'Email',
                          ispassword: false,
                          textcontroller: controller.emailController,
                          valid: (p0) => validator(
                              controller.emailController!.text.toString(),
                              'email',
                              4,
                              100),
                          icon: Icon(Icons.email)),
                      Custompaddingwidget(value: defaultpadding),
                      customTextField(
                          label: 'Password',
                          textcontroller: controller.passwordController,
                          valid: (p0) => validator(
                              controller.passwordController!.text.toString(),
                              'password',
                              4,
                              50),
                          ispassword: true,
                          valid2: () {
                            Auth_contr.changePasswordstate();
                          },
                          isphone: false,
                          icon: Icon(Icons.password)),
                      Custompaddingwidget(value: defaultpadding),
                      customTextField(
                        label: 'Phone ',
                        ispassword: false,
                        textcontroller: controller.phoneController,
                        valid: (p0) => validator(
                            controller.phoneController!.text.toString(),
                            'phone',
                            4,
                            50),
                        icon: Icon(Icons.phone),
                        isphone: true,
                      ),
                      Custompaddingwidget(value: defaultpadding),
                      InkWell(
                          onTap: () async {
                            await controller.addUser();
                          },
                          child:
                              CustomButton(title: 'Sign Up', color: SixColor)),
                      Custompaddingwidget(value: defaultpadding),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customSmallTitle(
                              title: 'Already Have An Account ? ',
                              color: thirdColor),
                          GetBuilder<AuthController>(
                            builder: (controller) => InkWell(
                                onTap: () {
                                  Get.offNamed(AppKey.loginKey);
                                },
                                child: GradientWidget(
                                    customSmallTitle(
                                        title: 'Sign In', color: primeColor),
                                    gradient: LinearGradient(
                                        colors: [SixColor, SevenColor]))),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
