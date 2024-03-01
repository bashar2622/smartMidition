import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartmediation/controller/AuthController.dart';
import 'package:smartmediation/core/constant.dart';
import 'package:smartmediation/view/widgets/OTP_verification.dart';
import 'package:smartmediation/view/widgets/global/customMainTitle.dart';
import 'package:smartmediation/view/widgets/global/customsmalltTitle.dart';
import 'package:smartmediation/view/widgets/global/customtpaddingWidget.dart';

class CheckCode extends StatelessWidget {
  const CheckCode({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(checkCodeController());
    return Scaffold(
        body: GetBuilder<checkCodeController>(
            builder: (controller) => Container(
                  margin: EdgeInsets.all(defaultpadding),
                  child: ListView(
                    children: [
                      Image.asset(
                        myLogo,
                        width: Get.width / 2,
                        height: Get.width / 2,
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: CustomMainTitle(title: 'Check Code')),
                      Custompaddingwidget(value: defaultpadding),
                      Align(
                          alignment: Alignment.center,
                          child: customSmallTitle(
                            title:
                                'please Enter the Code Thar resived in Email Box',
                            color: thirdColor,
                          )),
                      Custompaddingwidget(value: defaultpadding),
                      OTPVirefication(
                          numberOfOTP: 5,
                          colorr: secondColor,
                          func: () {
                            controller.goToRedefinePasswrod();
                          }),
                      Custompaddingwidget(value: defaultpadding),
                    ],
                  ),
                )));
  }
}
