import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartmediation/controller/AuthController.dart';
import 'package:smartmediation/core/constant.dart';

class customTextField extends StatelessWidget {
  final String label;
  final TextEditingController? textcontroller;
  final String? Function(String?) valid;
  final Icon icon;
  final bool? isphone;
  final bool? ispassword;
  final void Function()? valid2;
  const customTextField(
      {required this.label,
      required this.textcontroller,
      required this.valid,
      required this.icon,
      this.ispassword = false,
      this.isphone = false,
      this.valid2});

  @override
  Widget build(BuildContext context) {
    // Get.put(LoginController());
    Get.put(AuthController());
    return GetBuilder<AuthController>(
      builder: (controller) => TextFormField(
        controller: textcontroller,
        obscureText: controller.issecure == true && this.ispassword == true
            ? true
            : false,
        keyboardType:
            isphone == true ? TextInputType.phone : TextInputType.emailAddress,
        validator: valid,
        decoration: InputDecoration(
            fillColor: thirdColor.withOpacity(0.2),
            filled: true,
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: primeColor)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: SevenColor)),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
              ),
            ),
            hintStyle: TextStyle(),
            suffixIcon: ispassword == true
                ? IconButton(
                    onPressed: () {
                      valid2!.call();
                    },
                    icon: Icon(Icons.remove_red_eye_sharp))
                : null,
            icon: icon,
            hintText: label),
      ),
    );
  }
}
