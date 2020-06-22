import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:nasvi/config/validator.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/widget/custom-card.dart';
import 'package:nasvi/widget/custom-widget.dart';

class SocialSecurity extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;
  const SocialSecurity({Key key, this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCustomCard(
      child: Column(
        children: <Widget>[
          Text(
            Intl.message(Keys.SOCIAL_SECURITY_INFORMATION),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
//          CustomYesNoSpecify(labelText: "Hello", attribute: "custom-yes-no", formKey: formKey,),
          CustomYesNoSpecify(
            labelText: Keys.HAVE_AADHAR_CARD,
            attribute: Keys.HAVE_AADHAR_CARD,
            formKey: formKey,
            keyboardType: TextInputType.number,
            validators: [
              (val) {
                if (Validator.isValidAadhaarCard(val)) {
                  return null;
                } else {
                  return "Enter Valid Aadhaar No";
                }
              }
            ],
            yesLabelText: "Enter Aadhaar Card Number",
          ),

//          MyFormBuilderRadio(
//              attribute: Keys.HAVE_AADHAR_CARD,
//              labelText: Keys.HAVE_AADHAR_CARD,
//              options: ['YES', 'NO']),
//          MyFormBuilderTextField(
//            attribute: Keys.AADHAR_CARD_NO,
//            labelText: Keys.AADHAR_CARD_NO,
//          ),
          MyFormBuilderRadio(
              attribute: Keys.HAVING_SAVING_BANK_ACCOUNT,
              labelText: Keys.HAVING_SAVING_BANK_ACCOUNT,
              options: Keys.YES_NO,
          validators: [FormBuilderValidators.required()],),
          MyFormBuilderRadio(
              attribute: Keys.JAN_DHAN_ACCOUNT,
              labelText: Keys.JAN_DHAN_ACCOUNT,
              options: Keys.YES_NO,
              validators: [FormBuilderValidators.required()]),
          MyFormBuilderRadio(
              attribute: Keys.BANK_ACCT_LINK_WITH_AADHAR_CARD,
              labelText: Keys.BANK_ACCT_LINK_WITH_AADHAR_CARD,
              options: Keys.YES_NO,
              validators: [FormBuilderValidators.required()]),
          MyFormBuilderRadio(
              attribute: Keys.KYC_VERIFY_FROM_BANK,
              labelText: Keys.KYC_VERIFY_FROM_BANK,
              options: Keys.YES_NO,
              validators: [FormBuilderValidators.required()]),
          MyFormBuilderRadio(
              attribute: Keys.LINKED_WITH_PMSBY,
              labelText: Keys.LINKED_WITH_PMSBY,
              options: Keys.YES_NO,
              validators: [FormBuilderValidators.required()]),
          MyFormBuilderRadio(
              attribute: Keys.LINKED_WITH_PMJJBY,
              labelText: Keys.LINKED_WITH_PMJJBY,
              options: Keys.YES_NO,
              validators: [FormBuilderValidators.required()]),
          CustomYesNoSpecify(
            labelText: Keys.LINKED_WITH_SOCIAL_SECURITY_SCHEME,
            attribute: Keys.LINKED_WITH_SOCIAL_SECURITY_SCHEME,
            formKey: formKey,
            keyboardType: TextInputType.text,
            validators: [
                  (val) {
                if (Validator.isValidName(val)) {
                  return null;
                } else {
                  return "Specify, If Yes";
                }
              }
            ],
            yesLabelText: "Specify",
          ),
//          MyFormBuilderRadio(
//              attribute: Keys.LINKED_WITH_SOCIAL_SECURITY_SCHEME,
//              labelText: Keys.LINKED_WITH_SOCIAL_SECURITY_SCHEME,
//              options: Keys.YES_NO),
//          MyFormBuilderTextField(
//            attribute: Keys.SPECIFY_SOCIAL_SECURITY_SCHEME,
//            labelText: Keys.SPECIFY_SOCIAL_SECURITY_SCHEME,
//          ),
          MyFormBuilderRadio(
              attribute: Keys.RECV_CASH_TRANSFER_DURING_COVID_19,
              labelText: Keys.RECV_CASH_TRANSFER_DURING_COVID_19,
              options: Keys.YES_NO,
              validators: [FormBuilderValidators.required()]),
          CustomYesNoSpecify(
            labelText: Keys.HAVING_VOTER_CARD,
            attribute: Keys.HAVING_VOTER_CARD,
            formKey: formKey,
            keyboardType: TextInputType.text,
            validators: [
                  (val) {
                if (Validator.isValidPanCard(val)) {
                  return null;
                } else {
                  return "Enter Valid Voter Id No";
                }
              }
            ],
            yesLabelText: "Enter Voter Id Number",
          ),
//          MyFormBuilderRadio(
//              attribute: Keys.HAVING_VOTER_CARD,
//              labelText: Keys.HAVING_VOTER_CARD,
//              options: Keys.YES_NO),
//
//          MyFormBuilderTextField(
//            attribute: Keys.VOTER_ID_NMBR,
//            labelText: Keys.VOTER_ID_NMBR,
//          ),
          CustomYesNoSpecify(
            labelText: Keys.HAVING_PAN_CARD,
            attribute: Keys.HAVING_PAN_CARD,
            formKey: formKey,
            keyboardType: TextInputType.text,
            validators: [
                  (val) {
                if (Validator.isValidPanCard(val)) {
                  return null;
                } else {
                  return "Enter Valid Pan Card No";
                }
              }
            ],
            yesLabelText: "Enter Pan Card Number",
          ),
//          MyFormBuilderRadio(
//              attribute: Keys.HAVING_PAN_CARD,
//              labelText: Keys.HAVING_PAN_CARD,
//              options: Keys.YES_NO),
//          MyFormBuilderTextField(
//            attribute: Keys.SPECIFY_PAN_CARD_NO,
//            labelText: Keys.SPECIFY_PAN_CARD_NO,
//          ),
          MyFormBuilderRadio(
              attribute: Keys.ARE_YOU_UNDER_DIVYANG_CATEGORY,
              labelText: Keys.ARE_YOU_UNDER_DIVYANG_CATEGORY,
              options: Keys.YES_NO,),
          CustomYesNoSpecify(
            labelText: Keys.HAVING_DIVYANG_CERTI,
            attribute: Keys.HAVING_DIVYANG_CERTI,
            formKey: formKey,
            keyboardType: TextInputType.text,
            validators: [
                  (val) {
                if (Validator.isValidName(val)) {
                  return null;
                } else {
                  return "Enter Valid Divyang Certificate No";
                }
              }
            ],
            yesLabelText: "Enter Divyang Certificate Number",
          ),
//          MyFormBuilderRadio(
//              attribute: Keys.HAVING_DIVYANG_CERTI,
//              labelText: Keys.HAVING_DIVYANG_CERTI,
//              options: Keys.YES_NO_NA),
//          MyFormBuilderTextField(
//            attribute: Keys.DIVYANG_CERTI_NMBR,
//            labelText: Keys.DIVYANG_CERTI_NMBR,
//          ),
          MyFormBuilderRadio(
              attribute: Keys.GETTING_DIVYANG_PENSION,
              labelText: Keys.GETTING_DIVYANG_PENSION,
              options: Keys.YES_NO_NA),
          MyFormBuilderRadio(
              attribute: Keys.GETTING_OLD_AGE_PENSION,
              labelText: Keys.GETTING_OLD_AGE_PENSION,
              options: Keys.YES_NO_NA),
          MyFormBuilderRadio(
              attribute: Keys.GETTING_ANY_WINDOW_PENSION,
              labelText: Keys.GETTING_ANY_WINDOW_PENSION,
              options: Keys.YES_NO_NA),
        ],
      ),
    );
  }
}
