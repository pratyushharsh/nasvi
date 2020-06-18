import 'package:flutter/material.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

class SmallEnterrise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text("Small Enterprise"),
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
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.UDYOG_AADHAR_CARD,
              labelText: Keys.UDYOG_AADHAR_CARD,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.BUSINESS_ON_SOCIAL_MEDIA,
              labelText: Keys.BUSINESS_ON_SOCIAL_MEDIA,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.OWN_OR_RENT_SHOP,
              labelText: Keys.OWN_OR_RENT_SHOP,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.RENT_AGREEMENT,
              labelText: Keys.RENT_AGREEMENT,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.TRAINING_ON_SOCL_MEDIA,
              labelText: Keys.TRAINING_ON_SOCL_MEDIA,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.ANY_SKILL_OR_TRAINING,
              labelText: Keys.ANY_SKILL_OR_TRAINING,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderTextField(
            attribute: Keys.SPECIFY_SKILL_TRAINING,
            labelText: Keys.SPECIFY_SKILL_TRAINING,
          ),
          MyFormBuilderRadio(
              attribute: Keys.PROJECT_REPORT_BUSINESS,
              labelText: Keys.PROJECT_REPORT_BUSINESS,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.BAL_SHEET_OF_ENTERPRISE,
              labelText: Keys.BAL_SHEET_OF_ENTERPRISE,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.REG_UNDER_SHOP_ESTAB_ACT,
              labelText: Keys.REG_UNDER_SHOP_ESTAB_ACT,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.BAL_SHEET_OF_ENTERPRISE,
              labelText: Keys.BAL_SHEET_OF_ENTERPRISE,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.RECIV_MUDRA_LOAN,
              labelText: Keys.RECIV_MUDRA_LOAN,
              options: [
                "Yes", "No"
              ]
          ),
        ],
      ),
    );
  }
}
