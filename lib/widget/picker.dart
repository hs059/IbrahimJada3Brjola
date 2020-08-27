import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class Picker extends StatefulWidget {
  Function setCurrency;

  Picker(this.setCurrency);

  @override
  _PickerState createState() => _PickerState();
}

class _PickerState extends State<Picker> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPicker(
      children: currencyMap.keys.toList().map((e) => Text(e)).toList(),
      itemExtent: 32,
      onSelectedItemChanged: (value) {
        widget.setCurrency(value);
        setState(() {});
      },
    );
  }
}
