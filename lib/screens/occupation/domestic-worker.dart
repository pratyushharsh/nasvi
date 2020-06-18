import 'package:flutter/material.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

class DomesticWorker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text("Domestic Worker"),
          MyFormBuilderRadio(
              attribute: Keys.WORK_RELATED_ID_CARD,
              labelText: Keys.WORK_RELATED_ID_CARD,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.WORK_ID_CARD_AUTHRIZATION,
              labelText: Keys.WORK_ID_CARD_AUTHRIZATION,
              options: [
                "RAW", "Police","Any Organization","Other"
              ]
          ),
        ],
      ),
    );
  }
}
