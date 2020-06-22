import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

class ConstructionWorker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text(Intl.message(Keys.CONSTRUCTION_WORKER)),
          MyFormBuilderRadio(
              attribute: Keys.REG_WITH_WELFARE_BOARD,
              labelText: Keys.REG_WITH_WELFARE_BOARD,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.LABOUR_ID_CARD,
              labelText: Keys.LABOUR_ID_CARD,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.RECV_AUZAAR_OR_OTHER_SCHEME,
              labelText: Keys.RECV_AUZAAR_OR_OTHER_SCHEME,
              options: Keys.YES_NO,
          ),
          MyFormBuilderTextField(
            attribute: Keys.MENTION_OTHER_SCHEME,
            labelText: Keys.MENTION_OTHER_SCHEME,
          ),
        ],
      ),
    );
  }
}
