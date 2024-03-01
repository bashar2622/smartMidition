import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:smartmediation/core/models/statusRequest.dart';

Future<Either<StatuSRequest, Map>> postData(String url, Map map) async {
  var response = await http.post(Uri.parse(url), body: map);
  if (true == true) {
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return Right(data);
    } else {
      return Left(StatuSRequest.ServerFailure);
    }
  } else {
    return Left(StatuSRequest.ServerOffline);
  }
}

Future<Either<StatuSRequest, Map>> getData(String url) async {
  var response = await http.get(Uri.parse(url));
  if (/*checkInternet()*/ true == true) {
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return Right(data);
    } else {
      return Left(StatuSRequest.ServerFailure);
    }
  } else {
    return Left(StatuSRequest.ServerOffline);
  }
}
