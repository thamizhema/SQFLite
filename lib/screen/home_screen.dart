import 'package:flutter/material.dart';
import 'package:sqflite_practice/helpers/drawer_nav.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO List From SQFLite'),
      ),
      drawer: DrawerNavigation(),
    );
  }
}
