import 'package:sqflite_practice/models/category.dart';

class CategoryService {
  saveCategory(Category category) {
    print(category.name);
    print(category.description);
  }
}
