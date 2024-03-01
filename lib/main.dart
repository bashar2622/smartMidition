import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartmediation/core/appkey.dart';
import 'package:smartmediation/core/constant.dart';
import 'package:smartmediation/core/services/myServices.dart';
import 'package:smartmediation/view/screens/Auth/Forgetpassword.dart';
import 'package:smartmediation/view/screens/Auth/Login.dart';
import 'package:smartmediation/view/screens/Auth/ReDefinePassword.dart';
import 'package:smartmediation/view/screens/Auth/Regester.dart';
import 'package:smartmediation/view/screens/Auth/checkCode.dart';
import 'package:smartmediation/view/screens/Company_Part/companyPart.dart';
import 'package:smartmediation/view/screens/Detalsimaterials.dart';
import 'package:smartmediation/view/screens/Individual_part/addRequest.dart';
import 'package:smartmediation/view/screens/Individual_part/individualPart.dart';
import 'package:smartmediation/view/screens/categoryPart.dart';
import 'package:smartmediation/view/screens/choiceAccount.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await initalServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(),
          // fontFamily: 'PlayfairDisplay',
          appBarTheme:
              AppBarTheme(backgroundColor: backgroundcolor, elevation: 0.0),
          scaffoldBackgroundColor: backgroundcolor),
      getPages: [
        GetPage(
          name: AppKey.mainKey,
          page: () => chooseAccount(),
          // middlewares: [Mymiddlwware()]
        ),
        GetPage(name: AppKey.loginKey, page: () => SignIn()),
        GetPage(name: AppKey.forgetPasswordkey, page: () => ForgetPassword()),
        GetPage(name: AppKey.RegesterKey, page: () => SignUp()),
        GetPage(name: AppKey.companykey, page: () => CompnayPart()),
        GetPage(name: AppKey.individualkey, page: () => individualPart()),
        GetPage(name: AppKey.checkCodekey, page: () => CheckCode()),
        GetPage(name: AppKey.categoryPartkey, page: () => CategoryPart()),
        GetPage(
            name: AppKey.DetailsMaterialskey, page: () => DetailsMaterials()),
        GetPage(
            name: AppKey.ReDefinePasswordkey, page: () => ReDefinePassword()),
        GetPage(name: AppKey.AddRequestKey, page: () => AddRequest()),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
