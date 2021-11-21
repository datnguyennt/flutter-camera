import 'package:fluttercamera/models/user.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  // static Future<List<User?>> fetchProducts() async {
  //   var response = await client.get(Uri.parse(
  //       'https://localhost:44324/api/user/getusers'));
  //   if (response.statusCode == 200) {
  //     var jsonString = response.body;
  //     return userFromJson(jsonString);
  //   }
  //   return null;
  // }
}
