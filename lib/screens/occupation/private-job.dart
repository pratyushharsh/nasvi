import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

class PrivateJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text(Intl.message(Keys.PRIVATE_JOB)),
          MyFormBuilderRadio(
              attribute: Keys.EMP_ID_CARD,
              labelText: Keys.EMP_ID_CARD,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.HONORARIUM_SALARY_ON_TIME,
              labelText: Keys.HONORARIUM_SALARY_ON_TIME,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.REG_WITH_ESIC,
              labelText: Keys.REG_WITH_ESIC,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
        ],
      ),
    );
  }
}
