import 'package:flutter/material.dart';
import 'package:study_currency/constant.dart';

class CurrencyTextField extends StatefulWidget {
  Function setValue;

  CurrencyTextField(this.setValue);

  @override
  _CurrencyTextFieldState createState() => _CurrencyTextFieldState();
}

class _CurrencyTextFieldState extends State<CurrencyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        widget.setValue(value);
        setState(() {});
      },
    );
  }
}
