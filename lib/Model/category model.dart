class CategoryModel {
  String? category_id;
  String? category_name;
  String? category_image;

  CategoryModel({required this.category_id, required this.category_name, required this.category_image});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    category_id = json['category_id'];
    category_name = json['category_name'];
    category_image = json['category_image'];
  }
  Map<String, dynamic> tojson() {
    return {
      'category_id': category_id,
      'category_name': category_name,
      'category_image': category_image,
    };
  }
}
