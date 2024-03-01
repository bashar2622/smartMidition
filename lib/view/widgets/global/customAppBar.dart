// import 'package:flutter/material.dart';

// class CustomAppbar extends StatelessWidget {
//   final String text1;
//   final void Function()? func;
//   final TextEditingController? cont;
//   final void Function()? onpress;
//   final void Function(String)? onpchange;

//   const CustomAppbar(
//       {super.key,
//       required this.text1,
//       required this.func,
//       this.cont,
//       this.onpress,
//       this.onpchange});
//   @override
//   Widget build(BuildContext context) {
//     double height_Page = MediaQuery.of(context).size.height;
//     double width_Page = MediaQuery.of(context).size.width;
//     return Row(
//       children: [
//         Expanded(
//           child: Container(
//             height: height_Page / 12,
//             decoration: BoxDecoration(
//                 color: thirdColor,
//                 borderRadius: BorderRadius.circular(defaultpadding)),
//             child: Center(
//               child: TextFormField(
//                 controller: cont,
//                 onChanged: onpchange,
//                 decoration: InputDecoration(
//                     hintText: '${text1}',
//                     hintStyle: TextStyle(fontSize: 20),
//                     border: OutlineInputBorder(borderSide: BorderSide.none),
//                     prefixIcon: IconButton(
//                         onPressed: onpress,
//                         icon: Icon(
//                           Icons.search,
//                           size: 25,
//                         ))),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           width: width_Page / 40,
//         ),
//         Container(
//           padding: EdgeInsets.all(5),
//           height: height_Page / 12,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: thirdColor,
//           ),
//           child: IconButton(
//               onPressed: func,
//               icon: Icon(
//                 Icons.notification_add_outlined,
//                 size: 25,
//               )),
//         ),
//         SizedBox(
//           width: width_Page / 40,
//         ),
//         Container(
//             padding: EdgeInsets.all(5),
//             height: height_Page / 12,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(defaultpadding),
//               color: thirdColor,
//             ),
//             child: IconButton(
//               onPressed: func,
//               icon: Icon(
//                 Icons.favorite_border_outlined,
//                 size: 25,
//               ),
//             )),
//       ],
//     );
//   }
// }
