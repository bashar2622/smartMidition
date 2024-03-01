import 'package:get/get.dart';

validator(String value, String type, int min, int max) {
  if (type == 'password') {
    if (value.length < min) {
      return 'password is to short  ';
    } else if (value.length > max) {
      return 'password is to long  ';
    }
  }
  if (type == 'email') {
    var result = GetUtils.isEmail(value);
    return result != true ? 'please Enter correct email' : null;
  }
  if (value.length == 0) {
    return ' ${type} can not be empty ';
  }

  return null;
}
