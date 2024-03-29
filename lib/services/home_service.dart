import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/home_model.dart';

class HomeService {
  Future<Home?> getHome() async {
    var uri = Uri.parse('http://fda.intertoons.com/api/V1/home');
    var response = await http
        .get(uri, headers: {'Authorization': 'Bearer akhil@intertoons.com'});
    if (response.statusCode == 200) {
      var json = response.body;
      return Home.fromJson(jsonDecode(json));
    }
    return null;
  }
}
