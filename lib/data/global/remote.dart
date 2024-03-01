// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:dartz/dartz.dart';

// handleData(requset) {
//   if (requset is StatusRequest) {
//     return requset;
//   } else {
//     return StatusRequest.success;
//   }
// }

// class handleBckendData {
//   CRUD crud;
//   handleBckendData(this.crud);
//   getData(String url, Map map) async {
//     var response = await crud.handleBckenddata(url, map);
//     return response.fold((l) => l, (r) => r);
//   }
// }

// class CRUD {
//   Future<Either<Map, StatusRequest>> handleBckenddata(
//       String url, Map map) async {
//     var response = await http.post(Uri.parse(url), body: map);

//     if (await checkInternet() == true) {
//       if (response.statusCode == 200) {
//         var data = jsonDecode(response.body);
//         return Left(data['data']);
//       } else {
//         return Right(StatusRequest.serverFailure);
//       }
//     } else {
//       return Right(StatusRequest.serverOffline);
//     }
//   }

//   checkInternet() async {
//     var response = await InternetAddress.lookup('http://wwww.google.com');
//     if (response.isEmpty) {
//       return true;
//     } else {
//       return false;
//     }
//   }
// }

// enum StatusRequest {
//   success,
//   serverFailure,
//   serverOffline,
//   none,
//   loading,
// }

// //for access to api for secuity
// String _basicAuth = 'Basic ' + base64Encode(utf8.encode('bashar:123123'));

// Map<String, String> myheaders = {'authorization': _basicAuth};
// //

// PostDataWithFiles(String url, Map data, File file) async {
//   var request = http.MultipartRequest('POST', Uri.parse(url));
//   var length = await file.length();
//   var stream = http.ByteStream(file.openRead());

//   var multipartFile = http.MultipartFile('image', stream, length,
//       filename: basename(file.path));
//   request.headers.addAll(myheaders);
//   request.files.add(multipartFile);
//   data.forEach((key, value) {
//     request.fields[key] = value;
//   });
//   var myrequset = await requset.send();
//   var response = await http.Response.fromStream(myrequset);
//   if (response.statusCode == 200) {
//     return jsonDecode(response.body);
//   } else {
//     print("error ${response.statusCode}");
//   }
// }
