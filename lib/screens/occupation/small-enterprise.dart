import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:nasvi/config/validator.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

class SmallEnterrise extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;

  const SmallEnterrise({Key key, this.formKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text(Intl.message(Keys.AGRICULTURAL_LABR)),
          MyFormBuilderRadio(
              attribute: Keys.TYPE_OF_ENTERPRISE,
              labelText: Keys.TYPE_OF_ENTERPRISE,
              options: [
                "Service", "Sale/Purchase","Production/Manufacturing","Others"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.ENTERPRISE_NAME,
              labelText: Keys.ENTERPRISE_NAME,
              options: Keys.YES_NO,
              validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.UDYOG_AADHAR_CARD,
              labelText: Keys.UDYOG_AADHAR_CARD,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.BUSINESS_ON_SOCIAL_MEDIA,
              labelText: Keys.BUSINESS_ON_SOCIAL_MEDIA,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.OWN_OR_RENT_SHOP,
              labelText: Keys.OWN_OR_RENT_SHOP,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.RENT_AGREEMENT,
              labelText: Keys.RENT_AGREEMENT,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.TRAINING_ON_SOCL_MEDIA,
              labelText: Keys.TRAINING_ON_SOCL_MEDIA,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
          CustomYesNoSpecify(
            labelText: Keys.ANY_SKILL_OR_TRAINING,
            attribute: Keys.ANY_SKILL_OR_TRAINING,
            formKey: formKey,
            keyboardType: TextInputType.text,
            validators: [
                  (val) {
                if (Validator.isValidName(val)) {
                  return null;
                } else {
                  return "specify your Skill required";
                }
              }
            ],
            yesLabelText: "if Yes then specify  ",
          ),
//          MyFormBuilderRadio(
//              attribute: Keys.ANY_SKILL_OR_TRAINING,
//              labelText: Keys.ANY_SKILL_OR_TRAINING,
//              options: Keys.YES_NO
//          ),
//          MyFormBuilderTextField(
//            attribute: Keys.SPECIFY_SKILL_TRAINING,
//            labelText: Keys.SPECIFY_SKILL_TRAINING,
//          ),
          MyFormBuilderRadio(
              attribute: Keys.PROJECT_REPORT_BUSINESS,
              labelText: Keys.PROJECT_REPORT_BUSINESS,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.BAL_SHEET_OF_ENTERPRISE,
              labelText: Keys.BAL_SHEET_OF_ENTERPRISE,
              options: Keys.YES_NO,
              validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.REG_UNDER_SHOP_ESTAB_ACT,
              labelText: Keys.REG_UNDER_SHOP_ESTAB_ACT,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.BAL_SHEET_OF_ENTERPRISE,
              labelText: Keys.BAL_SHEET_OF_ENTERPRISE,
              options: Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.RECIV_MUDRA_LOAN,
              labelText: Keys.RECIV_MUDRA_LOAN,
              options:Keys.YES_NO,
            validators: [FormBuilderValidators.required()],
          ),
        ],
      ),
    );
  }
}
