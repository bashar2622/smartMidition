import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant2.dart';
import '../../widgets/global/customTitle.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: Get.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Customtitle(
                  title: 'Account',
                  color: constanse.primeColor,
                  size: constanse.miniFontSize,
                  isBold: FontWeight.bold,
                  letterSpase: 0,
                  wordSpace: 1),
              leading: Icon(
                Icons.person,
                color: constanse.blue,
              ),
            ),
            Container(
              height: constanse.defaultpadding / 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(constanse.BorderRadius),
                  color: constanse.lightgrey2),
            ),
            ...List.generate(
                accountlistData.length,
                (index) => accountdaraView(
                      title: Customtitle(
                          title: '${accountlistData[index].title}',
                          color: constanse.grey,
                          size: constanse.minimoFontSize,
                          isBold: FontWeight.bold,
                          letterSpase: 0,
                          wordSpace: 1),
                      Icon1: null,
                      Icon2: accountlistData[index].icon,
                    )),
            ListTile(
              title: Customtitle(
                  title: 'Notification',
                  color: constanse.primeColor,
                  size: constanse.miniFontSize,
                  isBold: FontWeight.bold,
                  letterSpase: 0,
                  wordSpace: 1),
              leading: Icon(
                Icons.notifications_active_rounded,
                color: constanse.blue,
              ),
            ),
            Container(
              height: constanse.defaultpadding / 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(constanse.BorderRadius),
                  color: constanse.lightgrey2),
            ),
            ...List.generate(
                notifiactionDatatData.length,
                (index) => accountNotanotification(
                      title: Customtitle(
                          title: '${notifiactionDatatData[index].title}',
                          color: constanse.grey,
                          size: constanse.minimoFontSize,
                          isBold: FontWeight.bold,
                          letterSpase: 0,
                          wordSpace: 1),
                    )),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  child: Container(
                    margin: EdgeInsets.all(constanse.defaultpadding / 2),
                    child: InkWell(
                      onTap: () {},
                      child: Center(
                        child: Customtitle(
                            title: 'SIGN OUT',
                            color: constanse.primeColor,
                            size: constanse.minimoFontSize,
                            isBold: FontWeight.w500,
                            letterSpase: 1,
                            wordSpace: 1),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: constanse.defaultpadding / 10,
                        horizontal: constanse.defaultpadding),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: constanse.grey.withOpacity(0.4)),
                        borderRadius:
                            BorderRadius.circular(constanse.BorderRadius * 2)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AnotifiactionData {
  final String title;

  AnotifiactionData({required this.title});
}

List<AnotifiactionData> notifiactionDatatData = [
  AnotifiactionData(title: 'Theme Dark'),
  AnotifiactionData(title: 'Account Active'),
];

class accountNotanotification extends StatelessWidget {
  final Widget title;
  const accountNotanotification({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(),
      trailing: Switch(value: true, onChanged: (value) {}),
      title: title,
    );
  }
}

class AccountData {
  final String title;
  final Icon icon;

  AccountData({required this.icon, required this.title});
}

List<AccountData> accountlistData = [
  AccountData(
      icon: Icon(Icons.arrow_forward_ios_rounded), title: 'ChangePassword'),
  AccountData(
      icon: Icon(Icons.arrow_forward_ios_rounded), title: 'Content Setting'),
  AccountData(icon: Icon(Icons.arrow_forward_ios_rounded), title: 'Soccial'),
  AccountData(icon: Icon(Icons.arrow_forward_ios_rounded), title: 'Language'),
  AccountData(
      icon: Icon(Icons.arrow_forward_ios_rounded),
      title: 'privacy and Security'),
];

class accountdaraView extends StatelessWidget {
  final Widget title;
  final Icon? Icon1;
  final Icon? Icon2;

  const accountdaraView(
      {super.key,
      required this.title,
      required this.Icon1,
      required this.Icon2});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon1 == null ? SizedBox() : Icon1,
      trailing: Icon2 == null ? SizedBox() : Icon2,
      title: title,
    );
  }
}
