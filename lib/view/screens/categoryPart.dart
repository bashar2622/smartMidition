import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartmediation/core/appkey.dart';

class CategoryPart extends StatelessWidget {
  const CategoryPart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> materials = <String>[
      'IMG-20231029-WA0006.jpg',
      'IMG-20231029-WA0003.jpg',
      'IMG-20231029-WA0001.jpg',
      'IMG-20231029-WA0003.jpg',
      'IMG-20231029-WA0001.jpg'
    ];
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.search)],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView.separated(
            itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Get.toNamed(AppKey.AddRequestKey);
                  },
                  child: Card(
                    child: Container(
                      width: Get.width,
                      height: Get.height / 4,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'مواد البناء',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // Text(
                                      //   '3',
                                      //   style: TextStyle(
                                      //       fontSize: 20, color: primeColor),
                                      // ),
                                      // SizedBox(
                                      //   width: 10,
                                      // ),
                                      // Text(
                                      //   ' عدد الطلبات',
                                      //   style: TextStyle(
                                      //       fontSize: 20, color: primeColor),
                                      // ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            flex: 1,
                          ),
                          Expanded(
                            child: Image.asset(
                              'images/' + materials[index],
                              fit: BoxFit.cover,
                            ),
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 15,
                ),
            itemCount: materials.length),
      ),
    );
  }
}
