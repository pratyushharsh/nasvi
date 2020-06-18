import 'package:flutter/material.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

class AgriculturalLabour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text("Agricultural Labour"),
          MyFormBuilderRadio(
              attribute: Keys.MGNREGA_JOB_CARD,
              labelText: Keys.MGNREGA_JOB_CARD,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.WORK_UNDR_MGNREGA,
              labelText: Keys.WORK_UNDR_MGNREGA,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderTextField(
            attribute: Keys.WORKING_DAYS_FOR_MGNREGA,
            labelText: Keys.WORKING_DAYS_FOR_MGNREGA,
          ),
          MyFormBuilderRadio(
              attribute: Keys.GET_ANY_PAYMENT,
              labelText: Keys.GET_ANY_PAYMENT,
              options: [
                "Yes", "No"
              ]
          ),

        ],
      ),
    );
  }
}
