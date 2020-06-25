import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

import '../../widget/custom-widget.dart';

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text(Intl.message(Keys.OTHERS)),
          MyFormBuilderTextField(
            attribute: Keys.DETAIL_OF_YOUR_OCCUPATION,
            labelText: Keys.DETAIL_OF_YOUR_OCCUPATION,
            validators: [FormBuilderValidatorss.required()],
          ),
        ],
      ),
    );
  }
}
