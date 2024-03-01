import 'dart:io';

checkInternet() async {
  var response = await InternetAddress.lookup('google.com');
  if (response.isNotEmpty) {
    return true;
  } else {
    return false;
  }
}
