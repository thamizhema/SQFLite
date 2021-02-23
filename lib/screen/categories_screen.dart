import 'package:flutter/material.dart';
import 'package:sqflite_practice/models/category.dart';
import 'package:sqflite_practice/screen/home_screen.dart';
import 'package:sqflite_practice/services/categories_service.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  TextEditingController _categoriesNameController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  var _category = Category();
  var _categroryService = CategoryService();

  _showFormDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return AlertDialog(
            title: Text('Categories'),
            actions: [
              FlatButton(
                onPressed: () async {
                  _category.name = _categoriesNameController.text;
                  _category.description = _descriptionController.text;
                  var result = await _categroryService.saveCategory(_category);
                  print(result);
                },
                child: Text('Save'),
                color: Colors.blue,
              ),
              FlatButton(
                child: Text('Cancel'),
                color: Colors.red,
                onPressed: () => Navigator.pop(context),
              ),
            ],
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: _categoriesNameController,
                    decoration: InputDecoration(
                        hintText: 'Write a Categories',
                        labelText: 'Categories'),
                  ),
                  TextField(
                    controller: _descriptionController,
                    decoration: InputDecoration(
                        hintText: 'Write a Description',
                        labelText: 'Description'),
                  )
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
        leading: FlatButton(
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        title: Text('Categories'),
      ),
      body: Text('categories'),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _showFormDialog(context);
        },
      ),
    );
  }
}
