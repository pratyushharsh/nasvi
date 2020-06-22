import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

import '../../widget/custom-widget.dart';

class HomeBasedWorker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text(Intl.message(Keys.HOME_BASED_WORKER)),
          MyFormBuilderTextField(
              attribute: Keys.PIECE_RATE_OR_OWN_ACCT_WORKR,
              labelText: Keys.PIECE_RATE_OR_OWN_ACCT_WORKR,
            validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.Artisian_Card,
              labelText: Keys.Artisian_Card,
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
