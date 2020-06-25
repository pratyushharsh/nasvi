import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/widget.dart';

class StreetVendor extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;

  const StreetVendor({Key key, this.formKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text(Intl.message(Keys.STREET_VENDOR_OR_REHDI_PATRI)),
          MyFormBuilderRadio(
              attribute: Keys.IS_SURVEY_DONE,
              labelText: Keys.IS_SURVEY_DONE,
              options: Keys.YES_NO,
          ),
          MyFormBuilderRadio(
              attribute: Keys.RECIEVE_ID_CARD,
              labelText: Keys.RECIEVE_ID_CARD,
              options: Keys.YES_NO,
            validators: [FormBuilderValidatorss.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.VENDING_CERTI,
              labelText: Keys.VENDING_CERTI,
              options: Keys.YES_NO,
              validators: [FormBuilderValidatorss.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.STREET_FOOD_VENDOR,
              labelText: Keys.STREET_FOOD_VENDOR,
              options: Keys.YES_NO,
              validators: [FormBuilderValidatorss.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.FSSAI_REG,
              labelText: Keys.FSSAI_REG,
              options: Keys.YES_NO,
              validators: [FormBuilderValidatorss.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.FOSTAC_TRAINING_CERTI,
              labelText: Keys.FOSTAC_TRAINING_CERTI,
              options: Keys.YES_NO,
              validators: [FormBuilderValidatorss.required()],
          ),
          MyFormBuilderRadio(
              attribute: Keys.COVID_19_GOV_HELP_RECV,
              labelText: Keys.COVID_19_GOV_HELP_RECV,
              options: Keys.YES_NO,
              validators: [FormBuilderValidatorss.required()],
          ),
        ],
      ),
    );
  }
}
