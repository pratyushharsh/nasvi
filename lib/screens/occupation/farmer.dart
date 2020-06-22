import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
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
            options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderRadio(
            attribute: Keys.FM_PM_KSNY,
            labelText: Keys.FM_PM_KSNY,
            options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
        ],
      ),
    );
  }
}
