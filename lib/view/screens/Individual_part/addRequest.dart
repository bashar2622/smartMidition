import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartmediation/core/constant.dart';
import 'package:smartmediation/view/widgets/global/customTitle.dart';

class AddRequest extends StatelessWidget {
  const AddRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Stack(
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: EdgeInsets.all(15),
              height: Get.height,
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Customtitle(
                      title: 'تقديم طلب',
                      color: primeColor,
                      size: 44,
                      isBold: FontWeight.bold,
                      letterSpase: 1,
                      wordSpace: 1),
                  SizedBox(
                    height: 10,
                  ),
                  Customtitle(
                      title: 'احصل على أفضل الأسعار لطلباتك',
                      color: primeColor,
                      size: 26,
                      isBold: FontWeight.w700,
                      letterSpase: 1,
                      wordSpace: 1),
                  SizedBox(
                    height: 30,
                  ),
                  Customtitle(
                      title: 'الموقع',
                      color: primeColor,
                      size: 24,
                      isBold: FontWeight.w400,
                      letterSpase: 1,
                      wordSpace: 1),
                  Container(
                    width: Get.width,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 2,
                      color: primeColor,
                    )),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.location_on_outlined),
                            suffixIcon: Icon(Icons.arrow_drop_down),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Customtitle(
                      title: 'الكمية',
                      color: primeColor,
                      size: 24,
                      isBold: FontWeight.w400,
                      letterSpase: 1,
                      wordSpace: 1),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: Get.width,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 2,
                      color: primeColor,
                    )),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.align_vertical_center_outlined),
                            suffixIcon: Icon(Icons.arrow_drop_down),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Customtitle(
                      title: 'انواع الخشب',
                      color: primeColor,
                      size: 24,
                      isBold: FontWeight.w400,
                      letterSpase: 1,
                      wordSpace: 1),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: Get.width,
                    height: 70,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: Get.width / 4,
                          height: 70,
                          decoration: BoxDecoration(
                            color: fourthColor,
                          ),
                          child: Center(
                            child: Customtitle(
                                title: 'نوع 1 ',
                                color: backgroundcolor,
                                size: 24,
                                isBold: FontWeight.bold,
                                letterSpase: 1,
                                wordSpace: 2),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: Get.width / 4,
                          height: 70,
                          decoration: BoxDecoration(
                              color: backgroundcolor,
                              border: Border.all(color: primeColor)),
                          child: Center(
                            child: Customtitle(
                                title: 'نوع 2 ',
                                color: primeColor,
                                size: 24,
                                isBold: FontWeight.bold,
                                letterSpase: 1,
                                wordSpace: 2),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: Get.width / 4,
                          height: 70,
                          decoration: BoxDecoration(
                              color: backgroundcolor,
                              border: Border.all(color: primeColor)),
                          child: Center(
                            child: Customtitle(
                                title: 'نوع 3 ',
                                color: primeColor,
                                size: 24,
                                isBold: FontWeight.bold,
                                letterSpase: 1,
                                wordSpace: 2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.all(15),
                width: Get.width,
                height: 70,
                decoration: BoxDecoration(
                    color: primeColor,
                    border: Border.all(
                      width: 2,
                      color: primeColor,
                    )),
                child: Center(
                  child: Customtitle(
                      title: 'تقديم طلب',
                      color: backgroundcolor,
                      size: 24,
                      isBold: FontWeight.bold,
                      letterSpase: 1,
                      wordSpace: 2),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
