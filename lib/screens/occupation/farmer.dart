import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

class Farmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text(Intl.message(Keys.FARMER)),
          MyFormBuilderRadio(
            attribute: Keys.FM_KCC,
            labelText: Keys.FM_KCC,
            options: [
              "Yes", "No"
            ]
          ),
          MyFormBuilderRadio(
            attribute: Keys.FM_PM_KSNY,
            labelText: Keys.FM_PM_KSNY,
            options: [
              "Yes", "No"
            ]
          ),
        ],
      ),
    );
  }
}
