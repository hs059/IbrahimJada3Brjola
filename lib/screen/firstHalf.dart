

import 'package:flutter/material.dart';
import 'package:study_currency/widget/currencyTextField.dart';
import 'package:study_currency/widget/picker.dart';
import 'package:study_currency/constant.dart';


class FirstHalf extends StatelessWidget {
  Function setValue ;
  Function setFromCurrency ;

  Function setToCurrency ;

  FirstHalf(this.setValue,this.setFromCurrency,this.setToCurrency);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: Picker(setFromCurrency)),
        Expanded(child: CurrencyTextField(setValue)),
        Expanded(child: Picker(setToCurrency)),

      ],
    );
  }
}
