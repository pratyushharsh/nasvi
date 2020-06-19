import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/custom-card.dart';
import 'package:nasvi/widget/custom-widget.dart';

class Skill extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;

  const Skill({Key key, this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text(
            "Skill",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
//          CustomYesNoSpecify(labelText: "Hello", attribute: "custom-yes-no", formKey: formKey,),
//
          MyFormBuilderRadio(
              attribute: Keys.CATEGORY_SKILL,
              labelText: Keys.CATEGORY_SKILL,
              options: [
                'Skilled',
                'Semi-Skilled',
                'Highly-Skilled',
                'Unskilled'
              ]),
          MyFormBuilderRadio(
              attribute: Keys.CERTI_RELATED_SKILL,
              labelText: Keys.CERTI_RELATED_SKILL,
              options: ["Yes", "No"]),
          MyFormBuilderTextField(
            attribute: Keys.SPECIFY_YOUR_SKILL,
            labelText: Keys.SPECIFY_YOUR_SKILL,
          ),
          MyFormBuilderRadio(
              attribute: Keys.PARTICULAR_SKILL_REQ,
              labelText: Keys.PARTICULAR_SKILL_REQ,
              options: ["Yes", "No"]),
          MyFormBuilderTextField(
            attribute: Keys.SPECIFY_YOUR_SKILL_TRAIN_REQ,
            labelText: Keys.SPECIFY_YOUR_SKILL_TRAIN_REQ,
          ),
        ],
      ),
    );
  }
}
