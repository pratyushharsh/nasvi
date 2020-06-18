import 'package:flutter/material.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

import '../../widget/custom-widget.dart';

class AutoRickshaw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text("Auto RICKSHAW"),
          MyFormBuilderTextField(
            attribute: Keys.OWNER_OF_YOUR_AUTO_RICKSHAW,
            labelText: Keys.OWNER_OF_YOUR_AUTO_RICKSHAW,

          ),
          MyFormBuilderRadio(
              attribute: Keys.REG_WITH_MUNUICIPAL_BODY,
              labelText: Keys.REG_WITH_MUNUICIPAL_BODY,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.LICENSE_MUNICIPAL_BODY,
              labelText: Keys.LICENSE_MUNICIPAL_BODY,
              options: [
                "Yes", "No"
              ]
          ),
        ],
      ),
    );
  }
}
