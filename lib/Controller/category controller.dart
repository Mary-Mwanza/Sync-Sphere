import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:s_sphere/Model/category%20model.dart';



class CategoryController extends GetxController {
  List<CategoryModel> categories = [];
  Future<List<CategoryModel>> loadButton() async {
    try {
      final response = await http.post(
        Uri.parse("http://10.0.2.2/registration/category.php"),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
      );

      if (response.statusCode == 200) {
        final dataFromJson = jsonDecode(response.body) as List;
        print(dataFromJson);
        //convert into a list of product model
        categories = dataFromJson
            .map((category) => CategoryModel.fromJson(category))
            .toList();
        print(categories.first.category_name);
        update();
        return categories;
      } else {
        print(response.statusCode);
        Get.snackbar('Error', response.body);
        print('asdf ${response.body}');
      }
    } catch (e) {
      print(e);
      print(e);
      Get.snackbar('Error', e.toString());
    }
    return categories;
  }
  
}
