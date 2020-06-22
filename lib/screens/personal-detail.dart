import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:nasvi/config/validator.dart';
import 'package:nasvi/widget/custom-card.dart';
import 'package:nasvi/widget/custom-widget.dart';

import '../keys.dart';

class PersonalDetail extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;

  const PersonalDetail({Key key, this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text("Personal Detail",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          MyFormBuilderTextField(
              attribute: Keys.NAME,
              labelText: Keys.NAME,
              validators: [FormBuilderValidators.required()]),
          MyFormBuilderTextField(
            attribute: Keys.NICK_NAME,
            labelText: Keys.NICK_NAME,
          ),
          MyFormBuilderTextField(
              attribute: Keys.AGE,
              labelText: Keys.AGE,
              keyboardType: TextInputType.number,
              validators: [FormBuilderValidators.required()]),
          MyFormBuilderRadio(
              attribute: Keys.GENDER,
              labelText: Keys.GENDER,
              options: ['Male', 'Female', 'Other'],
              validators: [FormBuilderValidators.required()]),
          MyFormBuilderRadio(
              attribute: Keys.APL_CATEGORY,
              labelText: Keys.APL_CATEGORY,
              options: Keys.YES_NO,
              validators: [FormBuilderValidators.required()]),
          MyFormBuilderRadio(
              attribute: Keys.BPL_CATEGORY,
              labelText: Keys.BPL_CATEGORY,
              options: Keys.YES_NO,
              validators: [FormBuilderValidators.required()]),
          CustomYesNoSpecify(
            labelText: Keys.RATION_CARD,
            attribute: Keys.RATION_CARD,
            formKey: formKey,
            keyboardType: TextInputType.number,
            validators: [
              (val) {
                if (Validator.isValidRationCard(val)) {
                  return null;
                } else {
                  return "Enter Valid Ration Card No";
                }
              }
            ],
            yesLabelText: "Enter Ration Card Number",
          ),
          //        MyFormBuilderRadio(
//              attribute: Keys.RATION_CARD,
//              labelText: Keys.RATION_CARD,
//              options:Keys.YES_NO),
//          MyFormBuilderTextField(
//            attribute: Keys.RATION_CARD_NO,
//            labelText: Keys.RATION_CARD_NO,
//          ),
          MyFormBuilderRadio(
              attribute: Keys.CVOID_19_CAMPION,
              labelText: Keys.CVOID_19_CAMPION,
              options: Keys.YES_NO,
              validators: [FormBuilderValidators.required()]),
          MyFormBuilderRadio(
              attribute: Keys.CVOID_19_RATION_RECEIVE,
              labelText: Keys.CVOID_19_RATION_RECEIVE,
              options: Keys.YES_NO,
              validators: [FormBuilderValidators.required()]),
          MyFormBuilderRadio(
              attribute: Keys.AYUSHMAN_OR_SWASTHYA_CARD,
              labelText: Keys.AYUSHMAN_OR_SWASTHYA_CARD,
              options: Keys.YES_NO,
              validators: [FormBuilderValidators.required()]),
        ],
      ),
    );
  }
}
