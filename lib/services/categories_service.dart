import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/categories_model.dart';

class CategoryService {
  Future<Category?> getCategories() async {
    var uri = Uri.parse('http://fda.intertoons.com/api/V1/categories');
    var response = await http
        .get(uri, headers: {'Authorization': 'Bearer akhil@intertoons.com'});
    if (response.statusCode == 200) {
      var json = response.body;
      return Category.fromJson(jsonDecode(json));
    }
    return null;
  }
}
