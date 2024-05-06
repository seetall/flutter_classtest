import 'package:class_test/widget/my_button.dart';
import 'package:flutter/material.dart';
 
class GridViewScreen extends StatelessWidget {
  final String name = 'Seetal';
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Screen'),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(name.length, (index) {
          return MyButton(name[index]);
        }),
      ),
    );
  }
}