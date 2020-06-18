import 'package:flutter/material.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

class PrivateJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text("Private Job"),
          MyFormBuilderRadio(
              attribute: Keys.EMP_ID_CARD,
              labelText: Keys.EMP_ID_CARD,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.HONORARIUM_SALARY_ON_TIME,
              labelText: Keys.HONORARIUM_SALARY_ON_TIME,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.REG_WITH_ESIC,
              labelText: Keys.REG_WITH_ESIC,
              options: [
                "Yes", "No"
              ]
          ),
        ],
      ),
    );
  }
}
