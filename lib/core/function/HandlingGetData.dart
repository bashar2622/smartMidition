import 'package:smartmediation/core/models/statusRequest.dart';

HandlingGetData(var requset) {
  if (requset is StatuSRequest) {
    return requset;
  }
  return StatuSRequest.Success;
}

