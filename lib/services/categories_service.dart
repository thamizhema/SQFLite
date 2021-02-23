import 'package:sqflite_practice/models/category.dart';
import 'package:sqflite_practice/repository/repository.dart';

class CategoryService {
  Repository _repository;
  CategoryService() {
    _repository = Repository();
  }
  saveCategory(Category category) async {
    return await _repository.insertData('categories', category.categoryMap());
  }
}
