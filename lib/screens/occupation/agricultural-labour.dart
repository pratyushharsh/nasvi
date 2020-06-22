import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

class AgriculturalLabour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text(Intl.message(Keys.AGRICULTURAL_LABR)),
          MyFormBuilderRadio(
              attribute: Keys.MGNREGA_JOB_CARD,
              labelText: Keys.MGNREGA_JOB_CARD,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.WORK_UNDR_MGNREGA,
              labelText: Keys.WORK_UNDR_MGNREGA,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderTextField(
            attribute: Keys.WORKING_DAYS_FOR_MGNREGA,
            labelText: Keys.WORKING_DAYS_FOR_MGNREGA,
          ),
          MyFormBuilderRadio(
              attribute: Keys.GET_ANY_PAYMENT,
              labelText: Keys.GET_ANY_PAYMENT,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),

        ],
      ),
    );
  }
}
