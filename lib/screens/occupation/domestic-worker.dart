import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

class DomesticWorker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text(Intl.message(Keys.DOMESTIC_WORKER)),
          MyFormBuilderRadio(
              attribute: Keys.WORK_RELATED_ID_CARD,
              labelText: Keys.WORK_RELATED_ID_CARD,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
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
