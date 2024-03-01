import 'package:flutter/material.dart';
import 'package:get/get.dart';

Color backgroundcolor = Colors.white;
Color primeColor = Colors.black;
Color secondColor = Color.fromRGBO(240, 90, 40, 1);
Color thirdColor = Colors.grey;
Color fourthColor = Color.fromRGBO(221, 86, 44, 1);
Color FiveColor = Color(0xff34bac3);
Color SixColor = Color(0xff1E7DBB);
Color SevenColor = Color(0xff214084);
Color EightColor = Color(0xffBBB7BA);

double defaultpadding = Get.width / 20;

// static const Color primary = contentColorCyan;
// static const Color menuBackground = Color(0xFF090912);
// static const Color itemsBackground = Color(0xFF1B2339);
// static const Color pageBackground = Color(0xFF282E45);
// static const Color mainTextColor1 = Colors.white;
// static const Color mainTextColor2 = Colors.white70;
// static const Color mainTextColor3 = Colors.white38;
// static const Color mainGridLineColor = Colors.white10;
// static const Color borderColor = Colors.white54;
// static const Color gridLinesColor = Color(0x11FFFFFF);

// static const Color contentColorBlack = Colors.black;
// static const Color contentColorWhite = Colors.white;
// static const Color contentColorBlue = Color(0xFF2196F3);
// static const Color contentColorYellow = Color(0xFFFFC300);
// static const Color contentColorOrange = Color(0xFFFF683B);
// static const Color contentColorGreen = Color(0xFF3BFF49);
// static const Color contentColorPurple = Color(0xFF6E1BFF);
// static const Color contentColorPink = Color(0xFFFF3AF2);
// static const Color contentColorRed = Color(0xFFE80054);
// static const Color contentColorCyan = Color(0xFF50E4FF);

// onBoardingImage url
const String Images = 'images/';
///////
const OnBoardingImage1 = '${Images}' + '${'onBoard1.png'}';
const OnBoardingImage2 = '${Images}' + '${'onBoard2.png'}';
const OnBoardingImage3 = '${Images}' + '${'onBoard3.png'}';

const BackgroundImage = '${Images}' + '${'background.jpg'}';
const myLogo = '${Images}' + '${'logo.png'}';

const NoImage = '${Images}' + '${'noImage.png'}';

//server
const server = 'http://10.0.2.2/smartmediation';

//login
const String SignUp_Adduser = '${server}/user/add.php';
const String checkAccount = '${server}/user/checkuser.php';
