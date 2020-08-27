import 'package:flutter/material.dart';
import 'screen/firstHalf.dart';
import 'screen/scondHalf.dart';
import 'package:study_currency/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String value;

  String fromCurrency ='USD';

  String toCurrency = 'USD';

  String result = '1';

  setValue(String value1) {
    this.value = value1;
    setState(() {});
    print(value);
  }

  setFromCurrency(int value1) {
    this.fromCurrency = currencyMap.keys.toList()[value1];
    setState(() {});
    print('$fromCurrency from');
    calculate();
  }

  setToCurrency(int value1) {
    this.toCurrency = currencyMap.keys.toList()[value1];
    setState(() {});
    print('$toCurrency to');
    calculate();
  }

  calculate() {
    result =
        '${(currencyMap[fromCurrency] / currencyMap[toCurrency]) * int.parse(value)}';
    print('$result to');

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('currency'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: FirstHalf(setValue, setFromCurrency, setToCurrency)),
          Expanded(child: SecondHalf(result)),
        ],
      ),
    );
  }
}
