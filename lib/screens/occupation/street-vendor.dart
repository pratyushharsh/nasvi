import 'package:flutter/material.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

class StreetVendor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text("Rehdi Patri /Street Vendor"),
          MyFormBuilderRadio(
              attribute: Keys.IS_SURVEY_DONE,
              labelText: Keys.IS_SURVEY_DONE,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.RECIEVE_ID_CARD,
              labelText: Keys.RECIEVE_ID_CARD,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.VENDING_CERTI,
              labelText: Keys.VENDING_CERTI,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.STREET_FOOD_VENDOR,
              labelText: Keys.STREET_FOOD_VENDOR,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.FSSAI_REG,
              labelText: Keys.FSSAI_REG,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.FOSTAC_TRAINING_CERTI,
              labelText: Keys.FOSTAC_TRAINING_CERTI,
              options: [
                "Yes", "No"
              ]
          ),
          MyFormBuilderRadio(
              attribute: Keys.COVID_19_GOV_HELP_RECV,
              labelText: Keys.COVID_19_GOV_HELP_RECV,
              options: [
                "Yes", "No"
              ]
          ),
        ],
      ),
    );
  }
}
