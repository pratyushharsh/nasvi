import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:nasvi/config/validator.dart';
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
            Intl.message(Keys.SKILL),
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
          CustomYesNoSpecify(
            labelText: Keys.CERTI_RELATED_SKILL,
            attribute: Keys.CERTI_RELATED_SKILL,
            formKey: formKey,
            keyboardType: TextInputType.text,
            validators: [
                  (val) {
                if (Validator.isValidName(val)) {
                  return null;
                } else {
                  return Keys.SPECIFY_YOUR_SKILL;
                }
              }
            ],
            yesLabelText: Keys.IF_YES_SPECIFY_SKILL,
          ),
//          MyFormBuilderRadio(
//              attribute: Keys.CERTI_RELATED_SKILL,
//              labelText: Keys.CERTI_RELATED_SKILL,
//              options: Keys.YES_NO),
//          MyFormBuilderTextField(
//            attribute: Keys.SPECIFY_YOUR_SKILL,
//            labelText: Keys.SPECIFY_YOUR_SKILL,
//          ),
          CustomYesNoSpecify(
            labelText: Keys.PARTICULAR_SKILL_REQ,
            attribute: Keys.PARTICULAR_SKILL_REQ,
            formKey: formKey,
            keyboardType: TextInputType.text,
            validators: [
                  (val) {
                if (Validator.isValidName(val)) {
                  return null;
                } else {
                  return Keys.SPECIFY_YOUR_SKILL;
                }
              }
            ],
            yesLabelText: Keys.IF_YES_SPECIFY_TRAINING_SKILL_REQ,
          ),
//          MyFormBuilderRadio(
//              attribute: Keys.PARTICULAR_SKILL_REQ,
//              labelText: Keys.PARTICULAR_SKILL_REQ,
//              options: Keys.YES_NO),
//          MyFormBuilderTextField(
//            attribute: Keys.SPECIFY_YOUR_SKILL_TRAIN_REQ,
//            labelText: Keys.SPECIFY_YOUR_SKILL_TRAIN_REQ,
//          ),
        ],
      ),
    );
  }
}
