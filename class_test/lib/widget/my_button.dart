import 'dart:ui';
 
import 'package:flutter/material.dart';
 
class MyButton extends StatefulWidget {
  final String label;
 
  MyButton(this.label);
 
  @override
  _MyButtonState createState() => _MyButtonState();
}
 
class _MyButtonState extends State<MyButton> {
  Color _buttonColor = Colors.pink;
  bool _isTapped = false;
  bool _isVisible = true;
 
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (!_isTapped) {
              _isTapped = true;
              _buttonColor = Colors.blue; // Change color on tap
            } else {
              _isVisible = false; // Hide the button on second tap
            }
          });
        },
        child: ClipOval(
          child: Container(
            color: _buttonColor,
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                widget.label,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}