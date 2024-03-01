import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartmediation/controller/chooseAccountController.dart';
import 'package:smartmediation/core/constant.dart';
import 'package:smartmediation/view/widgets/global/customButton.dart';
import 'package:smartmediation/view/widgets/global/customtpaddingWidget.dart';

class chooseAccount extends StatelessWidget {
  const chooseAccount({super.key});

  @override
  Widget build(BuildContext context) {
    chooseAccountContreoller contreoller = Get.put(chooseAccountContreoller());
    return Scaffold(
      body: Container(
        height: Get.height,
        child: Stack(
          children: [
            Container(
              height: Get.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        BackgroundImage,
                      ),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: Get.height,
              color: primeColor.withOpacity(0.5),
            ),
            Container(
              margin: EdgeInsets.all(defaultpadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: Get.height / 4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              myLogo,
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Custompaddingwidget(value: defaultpadding * 2),
                  InkWell(
                      onTap: () {
                        contreoller.goToLogin(contreoller.account[0]);
                      },
                      child:
                          CustomButton(title: 'Indevidual', color: SixColor)),
                  SizedBox(
                    height: defaultpadding * 2,
                  ),
                  InkWell(
                      onTap: () {
                        contreoller.goToLogin(contreoller.account[1]);
                      },
                      child: CustomButton(title: 'Company', color: SixColor)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
