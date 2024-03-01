// import 'package:fireproj/controller/mainscreencontroller.dart';
// import 'package:fireproj/core/constant.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class Customiconbar extends StatelessWidget {
//   final String name;
//   final Icon icon;
//   final void Function()? ontap;
//   final bool isactive;
//   const Customiconbar({
//     super.key,
//     required this.name,
//     required this.icon,
//     required this.ontap,
//     required this.isactive,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<mainscreencontroller>(
//       builder: (controller) => FittedBox(
//         child: Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(defaultpadding),
//               color: isactive == true ? secondColor : null),
//           child: MaterialButton(
//             onPressed: ontap,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 icon,
//                 Text(
//                   name,
//                   style: TextStyle(color: primeColor),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
