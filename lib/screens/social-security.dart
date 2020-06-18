import 'package:flutter/material.dart';
import 'package:nasvi/widget/custom-card.dart';
import 'package:nasvi/widget/custom-widget.dart';

import '../keys.dart';

class PersonalDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text("Social Security"),
          MyFormBuilderTextField(
            attribute: Keys.NAME,
            labelText: Keys.NAME,
          ),
          MyFormBuilderTextField(
            attribute: Keys.NICK_NAME,
            labelText: Keys.NICK_NAME,
          ),
          MyFormBuilderTextField(
            attribute: Keys.AGE,
            labelText: Keys.AGE,
          ),
          MyFormBuilderRadio(
            attribute: Keys.GENDER,
            labelText: Keys.GENDER,
            options: ["Yes", "No", "Others"]
          ),
          MyFormBuilderRadio(
            attribute: Keys.APL_CATEGORY,
            labelText: Keys.APL_CATEGORY,
            options: [
              "Yes", "No"
            ]
          ),
          MyFormBuilderRadio(
            attribute: Keys.BPL_CATEGORY,
            labelText: Keys.BPL_CATEGORY,
            options: [
              "Yes", "No"
            ]
          ),
          MyFormBuilderRadio(
            attribute: Keys.RATION_CARD,
            labelText: Keys.RATION_CARD,
            options: [
              "Yes", "No"
            ]
          ),
        ],
      ),
    );
  }
}
