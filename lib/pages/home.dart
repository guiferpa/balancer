import 'package:flutter/material.dart';
import 'package:date_util/date_util.dart';

import 'package:balancer/pages/details.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _daysInMonth;
  int _currentDayInMonth;
  int _daysLeftInMonth;
  int _valueInMonth = 0;
  int _currentValueInMonth = 0;

  DateUtil dutil = DateUtil();

  @override
  void initState() {
    super.initState();

    _currentDayInMonth = DateTime.now().day;
    _daysInMonth = dutil.daysInMonth(3, 2021);
    _daysLeftInMonth = _daysInMonth - _currentDayInMonth;
  }

  void _calculateBalancer(String value) {
    setState(() {
      _valueInMonth = int.parse(value);
      _currentValueInMonth = (_valueInMonth ~/ _daysLeftInMonth);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onSubmitted: this._calculateBalancer
            ),
            Text("Days in month: ${_daysInMonth.toString()}"),
            Text("Current day in month: ${_currentDayInMonth.toString()}"),
            Text("Days left in month: ${_daysLeftInMonth.toString()}"),
            Text("Current value in month: R\$ ${_currentValueInMonth.toString()}"),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsPage()));
              },
              child: Text(
                'Go to DetailsPage',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
