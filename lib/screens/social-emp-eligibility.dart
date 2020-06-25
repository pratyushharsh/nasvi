import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:nasvi/config/validator.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/custom-card.dart';
import 'package:nasvi/widget/custom-widget.dart';

class PersonalDetailCard extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;

  const PersonalDetailCard({Key key, this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text(Intl.message(Keys.SOCIAL_AND_EMPLOYMENT_ELIGIBILITY),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//          CustomYesNoSpecify(labelText: "Hello", attribute: "custom-yes-no", formKey: formKey,),
          MyFormBuilderDropdown(
              attribute: Keys.STATE,
              labelText: Keys.STATE,
              // initialValue: 'Male',
              hint: Keys.HINT_STATE,
              items: Keys.STATES),
          MyFormBuilderTextField(
            attribute: Keys.DISTRICT,
            labelText: Keys.DISTRICT,
          ),
          MyFormBuilderTextField(
            attribute: Keys.BLOCK,
            labelText: Keys.BLOCK,
            validators:[ FormBuilderValidatorss.required()]
          ),
          MyFormBuilderTextField(
            attribute: Keys.VILLAGE,
            labelText: Keys.VILLAGE,
              validators:[ FormBuilderValidatorss.required()]
          ),
          MyFormBuilderTextField(
            attribute: Keys.WARD_NO,
            labelText: Keys.WARD_NO,
              validators:[ FormBuilderValidatorss.required()]
          ),
          MyFormBuilderTextField(
            attribute: Keys.POSTAL_CODE,
            labelText: Keys.POSTAL_CODE,
            keyboardType: TextInputType.number,
            validators: [
                  (val) {
                if (Validator.isValidPostalCode(val)) {
                  return null;
                } else {
                  return Intl.message(Keys.ENTER_VALID_POSTAL_CODE??"");
                }
              }
            ],
          ),
          MyFormBuilderTextField(
            attribute: Keys.MOBILE,
            labelText: Keys.MOBILE,
              keyboardType: TextInputType.number,
            validators: [
                  (val) {
                if (Validator.isValidMobileNo(val)) {
                  return null;
                } else {
                  return Intl.message(Keys.ENTER_VALID_MOBILE_NO??"");
                }
              }
            ],
          ),
        ],
      ),
    );
  }
}
