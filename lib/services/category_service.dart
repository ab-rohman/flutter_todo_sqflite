import 'package:flutter_todo_sqflite/models/category.dart';
import 'package:flutter_todo_sqflite/repository/repository.dart';

class CategoryService {
  late Repository _repository;

  CategoryService() {
    _repository = Repository();
  }
  saveCategory(Category category) async {
    return await _repository.insertData("categories", category.categoryMap());
  }
}
