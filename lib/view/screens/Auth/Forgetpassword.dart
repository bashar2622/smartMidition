import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartmediation/controller/AuthController.dart';
import 'package:smartmediation/core/constant.dart';
import 'package:smartmediation/core/function/Validator.dart';
import 'package:smartmediation/view/widgets/global/customButton.dart';
import 'package:smartmediation/view/widgets/global/customMainTitle.dart';
import 'package:smartmediation/view/widgets/global/customTextFiled.dart';
import 'package:smartmediation/view/widgets/global/customsmalltTitle.dart';
import 'package:smartmediation/view/widgets/global/customtpaddingWidget.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordController());
    return Scaffold(
        body: GetBuilder<ForgetPasswordController>(
            builder: (controller) => Container(
                  margin: EdgeInsets.all(defaultpadding),
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
                            child: CustomMainTitle(title: 'Forget Password')),
                        Custompaddingwidget(value: defaultpadding),
                        Align(
                            alignment: Alignment.center,
                            child: customSmallTitle(
                              title:
                                  'please Enter Your Email Address To Recieve A Verification code',
                              color: thirdColor,
                            )),
                        Custompaddingwidget(value: defaultpadding),
                        customTextField(
                            label: 'Enter your Email',
                            textcontroller: controller.emailController,
                            valid: (p0) => validator(
                                controller.emailController.text.toString(),
                                'email',
                                10,
                                100),
                            icon: Icon(Icons.email)),
                        Custompaddingwidget(value: defaultpadding),
                        InkWell(
                            onTap: () {
                              controller.checkCode();
                            },
                            child:
                                CustomButton(title: 'Check', color: SixColor)),
                      ],
                    ),
                  ),
                )));
  }
}
