import 'package:smartmediation/core/function/GetData.dart';

class CRUD {
  CRUD();
  add(String url, Map map) async {
    var response = await postData(url, map);
    return response.fold((l) => l, (r) => r);
  }
    read(String url, Map map) async {
    var response = await postData(url, map);
    return response.fold((l) => l, (r) => r);
  }
}
