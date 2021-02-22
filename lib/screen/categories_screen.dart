import 'package:flutter/material.dart';
import 'package:sqflite_practice/screen/home_screen.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  _showFormDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return AlertDialog(
            title: Text('Categories'),
            actions: [
              FlatButton(
                onPressed: () {},
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
                    decoration: InputDecoration(
                        hintText: 'Write a Categories',
                        labelText: 'Categories'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Write a Categories',
                        labelText: 'Categories'),
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
