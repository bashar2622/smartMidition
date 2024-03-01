import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:smartmediation/controller/compnatController/CompnayController.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smartmediation/core/appkey.dart';
import 'package:smartmediation/core/constant.dart';
import 'package:badges/badges.dart' as badges;

class HomeCompnay extends StatelessWidget {
  const HomeCompnay({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    callFunc() {
      //return true;
    }
    final List<int> colorCodes = <int>[600, 500, 100];
    final List<String> adverts = <String>['R.png', 'l.png', 'R.png', 'l.png'];
    final List<String> materials = <String>[
      'IMG-20231029-WA0006.jpg',
      'IMG-20231029-WA0003.jpg',
      'IMG-20231029-WA0001.jpg'
    ];

    final List<String> Mashine = <String>[
      'truck1.jpg',
      'truck2.jpg',
      'truck1.jpg',
      'truck2.jpg',
    ];

    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
            centerTitle: false,
            //  titleSpacing: Get.width / 4,
            title: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: Get.width / 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.clear_all),
                    Icon(Icons.notifications_none_rounded),
                    Icon(Icons.search),
                  ],
                ),
              ),
            ),
            leadingWidth: 0.0,
            actions: [
              FittedBox(
                  child: Image.asset('images/logo.png'), fit: BoxFit.cover),
            ]),

        //  drawer: Drawer(),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(children: [
            Container(
              height: Get.height / 4,
              child: CarouselSlider.builder(
                itemCount: adverts.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  child: Container(
                    decoration: BoxDecoration(
                        color: thirdColor,
                        image: DecorationImage(
                            image: AssetImage('images/' + adverts[itemIndex]),
                            fit: BoxFit.cover)),
                    width: Get.width,
                  ),
                ),
                //    carouselController: buttonCarouselController,
                options: CarouselOptions(
                  height: Get.height / 4,
                  aspectRatio: 0.0,
                  viewportFraction: 1,
                  initialPage: 0,
                  // enableInfiniteScroll: true,
                  reverse: true,
                  autoPlay: true,
                  animateToClosest: true,
                  autoPlayCurve: Curves.linear,
                  enlargeCenterPage: true,
                  disableCenter: false,
                  onPageChanged: callFunc(),
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'مواد البناء',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppKey.categoryPartkey);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10),
                      //     border: Border.all(
                      //       color: Colors.grey.withOpacity(0.8),
                      //     )),
                      child: Text(
                        ' عرض الكل',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
            Container(
              height: Get.height / 3.5,
              width: Get.width,
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                        width: 20,
                      ),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  scrollDirection: Axis.horizontal,
                  itemCount: materials.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        Column(
                          children: [
                            Expanded(
                              flex: 6,
                              child: Container(
                                width: Get.width / 2,
                                decoration: BoxDecoration(
                                    color: Colors.amber[colorCodes[index]],
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'images/' + materials[index]),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                  width: Get.width / 2,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    width: 4,
                                    color: Colors.grey.withOpacity(0.2),
                                  )),
                                  child: Center(
                                    child: Text(
                                      'خفان',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  )),
                            )
                          ],
                        ),
                        Container(
                          width: Get.width / 2,
                          //height: 50,
                          padding: EdgeInsets.only(top: 100),
                          child: Align(
                            child: badges.Badge(
                              badgeStyle:
                                  badges.BadgeStyle(badgeColor: fourthColor),
                              badgeContent: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                      fontSize: 20, color: backgroundcolor),
                                ),
                              ),
                              //  child: Icon(Icons.settings),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: Get.width,
              height: 20,
              color: Colors.grey.withOpacity(0.2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'اليات',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.start,
              ),
            ),
            Container(
              height: Get.height / 3.5,
              width: Get.width,
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                        width: 20,
                      ),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  scrollDirection: Axis.horizontal,
                  itemCount: Mashine.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            width: Get.width / 1.7,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('images/' + Mashine[index]),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              width: Get.width / 1.7,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                width: 4,
                                color: Colors.grey.withOpacity(0.2),
                              )),
                              child: Center(
                                child: Text(
                                  'خفان',
                                  style: TextStyle(fontSize: 20),
                                ),
                              )),
                        )
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 100,
            ),
          ]),
        ),
        //   CustomScrollView(
        //     slivers: [
        //       SliverAppBar(
        //           expandedHeight: Get.height / 3,
        //           automaticallyImplyLeading: true,
        //           excludeHeaderSemantics: true,
        //           forceMaterialTransparency: true,
        //           pinned: true,
        //           backgroundColor: Colors.white,
        //           systemOverlayStyle: SystemUiOverlayStyle.dark,
        //           floating: true,
        //           flexibleSpace: FlexibleSpaceBar(
        //             expandedTitleScale: 1,
        //             collapseMode: CollapseMode.pin,
        //             centerTitle: true,
        //             background: Container(
        //                 width: Get.width,
        //                 child: Column(
        //                   children: [
        //                     Padding(
        //                       padding: EdgeInsets.symmetric(horizontal: 15),
        //                       child: Align(
        //                         alignment: Alignment.topRight,
        //                         child: Text(
        //                           'المواد الاكثر طلبا',
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.bold,
        //                               fontSize: 24,
        //                               color: Colors.black),
        //                         ),
        //                       ),
        //                     ),
        //                     Expanded(child: Charts()),
        //                   ],
        //                 )),
        //           )),
        //       SliverList(
        //           delegate: SliverChildListDelegate([
        //         Container(
        //           margin: EdgeInsets.all(15),
        //           height: 500,
        //           width: Get.width,
        //           child: GridView.builder(
        //             shrinkWrap: true,
        //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //                 childAspectRatio: 0.8 / 1,
        //                 crossAxisSpacing: 5,
        //                 mainAxisSpacing: 5,
        //                 crossAxisCount: 2),
        //             itemCount: 8,
        //             itemBuilder: (context, index) => Container(
        //                 decoration: BoxDecoration(
        //                     borderRadius: BorderRadius.circular(20),
        //                     image: DecorationImage(
        //                         image:
        //                             AssetImage('images/IMG-20231029-WA0001.jpg'),
        //                         fit: BoxFit.cover)),
        //                 child: Stack(
        //                   children: [
        //                     Container(
        //                       decoration: BoxDecoration(
        //                         borderRadius: BorderRadius.circular(20),
        //                       ),
        //                     ),
        //                     Align(
        //                       alignment: Alignment.bottomRight,
        //                       child: Container(
        //                         height: 50,
        //                         width: Get.width,
        //                         decoration: BoxDecoration(
        //                           color: Colors.black.withOpacity(0.3),
        //                           borderRadius: BorderRadius.only(
        //                             bottomLeft: Radius.circular(20),
        //                             bottomRight: Radius.circular(20),
        //                           ),
        //                         ),
        //                         child: Center(
        //                           child: Text(
        //                             'الاسمنت',
        //                             style: TextStyle(
        //                                 fontWeight: FontWeight.bold,
        //                                 fontSize: 26,
        //                                 color: Colors.white),
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                   ],
        //                 )),
        //           ),
        //         )
        //       ]))
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
