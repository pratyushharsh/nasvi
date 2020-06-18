import 'package:flutter/material.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

import '../../widget/custom-widget.dart';

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text("Other"),
          MyFormBuilderTextField(
            attribute: Keys.DETAIL_OF_YOUR_OCCUPATION,
            labelText: Keys.DETAIL_OF_YOUR_OCCUPATION,

          ),
        ],
      ),
    );
  }
}