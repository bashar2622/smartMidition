import 'package:flutter/material.dart';

class constanse {
  // Color
  static const Color backgroundcolor = Colors.white;
  static const Color primeColor = Colors.black;
  static const Color secondColor = Color.fromRGBO(240, 90, 40, 1);
  static const Color thirdColor = Colors.grey;
  static const Color fourthColor = Color.fromRGBO(221, 86, 44, 1);
  static const Color FiveColor = Color(0xff34bac3);
  static const Color sixColor = Color(0xffDB7C6F);
  static const Color sevenColor = Color(0xffF4F5F7);
  static const Color orange1 = Color.fromRGBO(243, 99, 67, 1);

  //grey color
  static const Color grey = Color.fromRGBO(112, 112, 112, 1);
  static const Color lightgrey = Color.fromRGBO(238, 238, 238, 1);
  static const Color dark = Color.fromRGBO(87, 87, 87, 1);
  static const Color lightgrey2 = Color(0xffDFE7F2);
  static const Color lightgrey3 = Color(0xfff3f4f8);
  static const Color blue = Color(0xfff036cF2);
  //pia charts color
  static const Color Pia_Chrt_color1 = Color(0xffEAE071);
  static const Color Pia_Chrt_color2 = Color(0xffAECCC2);
  static const Color Pia_Chrt_color3 = Color(0xffE0D6BD);
  static const Color Pia_Chrt_color4 = Color(0xff232323);

  //Padding
  static const double defaultpadding = 20;

  //Text
  static const double ExtraFontSize = 50;
  static const double titleFontSize = 36;
  static const double mainFontSize = 30;
  static const double middleFontSize = 26;
  static const double miniFontSize = 22;
  static const double minimoFontSize = 16;
  static const double minimoFontSize2 = 14;
  static const double IconSize = 16;
  static const double minimoFontSize3 = 12;

  //borderRasius
  static const double BorderRadius = 10;

  // onBoardingImage url
  static String onBoardingImageURL = 'assets/images/other/';
  static const String ImegesURL = 'assets/images/other/';

  //server url

  static const String ServerUrl = 'http://10.0.2.2/tourist/';
  //
  static const String category_url = '${ServerUrl}' + 'category/';
  //
  static const String category_read_url = '${ServerUrl}' + 'category/read.php';
  //
  static const String favourite_read_url =
      '${ServerUrl}' + 'favourite/read.php';
  //
  static const String filter_readForFamily =
      '${ServerUrl + 'filter/read_ForFamily.php'}';
  //
  static const String ServerImageUrl = '${ServerUrl}image/';

  /////////
  ///
  ///
  ///
  static const backgroundImage = '${ImegesURL}' + 'MU.jpg';

  String OnBoardingImage1 = '${onBoardingImageURL}' + '${'onBoard1.png'}';
  String OnBoardingImage2 = '${onBoardingImageURL}' + '${'onBoard2.png'}';
  String OnBoardingImage3 = '${onBoardingImageURL}' + '${'onBoard3.png'}';
  String NoImage = '${onBoardingImageURL}' + '${'noImage.png'}';

  static double getwidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double gethight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
