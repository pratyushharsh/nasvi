import 'package:flutter/material.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

import '../../widget/custom-widget.dart';

class HomeBasedWorker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text("Home  Based Worker"),
          MyFormBuilderTextField(
              attribute: Keys.PIECE_RATE_OR_OWN_ACCT_WORKR,
              labelText: Keys.PIECE_RATE_OR_OWN_ACCT_WORKR,

          ),
          MyFormBuilderRadio(
              attribute: Keys.Artisian_Card,
              labelText: Keys.Artisian_Card,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.REG_WITH_ESIC,
              labelText: Keys.REG_WITH_ESIC,
              options: [
                "Yes", "No"
              ]
          ),
        ],
      ),
    );
  }
}
