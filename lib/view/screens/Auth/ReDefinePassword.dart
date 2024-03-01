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

class ReDefinePassword extends StatelessWidget {
  const ReDefinePassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RedefinePasswordController());
    return Scaffold(
        body: GetBuilder<RedefinePasswordController>(
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
                            child: CustomMainTitle(title: 'Update Password')),
                        Custompaddingwidget(value: defaultpadding),
                        Align(
                            alignment: Alignment.center,
                            child: customSmallTitle(
                              title: 'please Enter The New Password',
                              color: thirdColor,
                            )),
                        Custompaddingwidget(value: defaultpadding),
                        customTextField(
                            label: 'Enter your Password',
                            textcontroller: controller.newpassword,
                            valid: (p0) => validator(
                                controller.newpassword.text.toString(),
                                'Password',
                                10,
                                100),
                            ispassword: true,
                            icon: Icon(Icons.email)),
                        Custompaddingwidget(value: defaultpadding),
                        customTextField(
                            label: 'Enter your Password Again',
                            textcontroller: controller.newpassword2,
                            valid: (p0) => validator(
                                controller.newpassword2.text.toString(),
                                'Password',
                                10,
                                100),
                            ispassword: true,
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
