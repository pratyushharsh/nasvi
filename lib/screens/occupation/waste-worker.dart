import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

class WasteWorker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text(Intl.message(Keys.WASTE_WORKER)),
          MyFormBuilderRadio(
            attribute: Keys.WW_NAGAR_NIGAM_LINKED,
            labelText: Keys.WW_NAGAR_NIGAM_LINKED,
            options: Keys.YES_NO
          ),
          MyFormBuilderRadio(
            attribute: Keys.WW_EMPLOYMENT_ID_CARD,
            labelText: Keys.WW_EMPLOYMENT_ID_CARD,
            options: Keys.YES_NO
          ),
        ],
      ),
    );
  }
}
