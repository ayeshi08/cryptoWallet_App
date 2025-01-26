import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _isChecked = true;

  String _currText = '';

  @override
  Widget build(BuildContext context) {
    return  Checkbox(
        value: _isChecked,
        onChanged: (val) {
          setState(() {
            //  _isChecked==val;
            if (_isChecked == false) {
              setState(() {
                _isChecked = true;
              });
            } else if (_isChecked == true) {
              setState(() {
                _isChecked = false;
              });
            }
          });
        }
        );
  }
}
