import 'package:flutter/material.dart';
import 'package:flutter_todo_sqflite/models/category.dart';
import 'package:flutter_todo_sqflite/services/category_service.dart';

import 'home_screen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  var _categoriesNameController = TextEditingController();
  var _categoriesDescriptionController = TextEditingController();

  var _category = Category();
  var _categoryService = CategoryService();

  _showFormDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return AlertDialog(
            actions: [
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  _category.name = _categoriesNameController.text;
                  _category.description = _categoriesDescriptionController.text;
                  _categoryService.saveCategory(_category);
                },
                child: Text("Save"),
              ),
            ],
            title: Text("Categories Form"),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: _categoriesNameController,
                    decoration: InputDecoration(
                      hintText: "Write a Category",
                      labelText: "Category",
                    ),
                  ),
                  TextField(
                    controller: _categoriesDescriptionController,
                    decoration: InputDecoration(
                      hintText: "Write the Description",
                      labelText: "Description",
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text("Categories"),
      ),
      body: Center(
        child: Text("Welcome to Categories Screen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showFormDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
