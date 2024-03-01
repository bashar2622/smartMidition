import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
//  flutter_otp_text_field: ^1.1.1

class OTPVirefication extends StatelessWidget {
  final int numberOfOTP;
  final Color colorr;
  final void Function() func;
  const OTPVirefication(
      {super.key,
      required this.numberOfOTP,
      required this.colorr,
      required this.func});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 5,
      borderColor: colorr,
      showFieldAsBox: true,
      onCodeChanged: (String code) {
        //handle validation or checks here
      },
      //runs when every textfield is filled
      onSubmit: (String verificationCode) {
        // showDialog(
        //     context: context,
        //     builder: (context) {
        //       return AlertDialog(
        //         title: Text("Verification Code"),
        //         content: Text('Code entered is $verificationCode'),
        //       );
        //     });
        if (verificationCode == '12345') {
          func.call();
        }
      }, // end onSubmit
    );
  }
}
