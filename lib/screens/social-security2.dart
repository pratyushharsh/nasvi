import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
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
            "Social Security Information",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
//          CustomYesNoSpecify(labelText: "Hello", attribute: "custom-yes-no", formKey: formKey,),

          MyFormBuilderRadio(
              attribute: Keys.HAVE_AADHAR_CARD,
              labelText: Keys.HAVE_AADHAR_CARD,
              options: ['YES', 'NO']),
          MyFormBuilderTextField(
            attribute: Keys.AADHAR_CARD_NO,
            labelText: Keys.AADHAR_CARD_NO,
          ),
          MyFormBuilderRadio(
              attribute: Keys.HAVING_SAVING_BANK_ACCOUNT,
              labelText: Keys.HAVING_SAVING_BANK_ACCOUNT,
              options: ["Yes", "No"]),
          MyFormBuilderRadio(
            attribute: Keys.JAN_DHAN_ACCOUNT,
            labelText: Keys.JAN_DHAN_ACCOUNT,
            options: ["Yes", "No"],
          ),
          MyFormBuilderRadio(
              attribute: Keys.BANK_ACCT_LINK_WITH_AADHAR_CARD,
              labelText: Keys.BANK_ACCT_LINK_WITH_AADHAR_CARD,
              options: ["Yes", "No"]),
          MyFormBuilderRadio(
              attribute: Keys.KYC_VERIFY_FROM_BANK,
              labelText: Keys.KYC_VERIFY_FROM_BANK,
              options: ["Yes", "No"]),
          MyFormBuilderRadio(
              attribute: Keys.LINKED_WITH_PMSBY,
              labelText: Keys.LINKED_WITH_PMSBY,
              options: ["Yes", "No"]),
          MyFormBuilderRadio(
              attribute: Keys.LINKED_WITH_PMJJBY,
              labelText: Keys.LINKED_WITH_PMJJBY,
              options: ["Yes", "No"]),
          MyFormBuilderRadio(
              attribute: Keys.LINKED_WITH_SOCIAL_SECURITY_SCHEME,
              labelText: Keys.LINKED_WITH_SOCIAL_SECURITY_SCHEME,
              options: ["Yes", "No"]),
          MyFormBuilderTextField(
            attribute: Keys.SPECIFY_SOCIAL_SECURITY_SCHEME,
            labelText: Keys.SPECIFY_SOCIAL_SECURITY_SCHEME,
          ),
          MyFormBuilderRadio(
              attribute: Keys.RECV_CASH_TRANSFER_DURING_COVID_19,
              labelText: Keys.RECV_CASH_TRANSFER_DURING_COVID_19,
              options: ["Yes", "No"]),
          MyFormBuilderRadio(
              attribute: Keys.HAVING_VOTER_CARD,
              labelText: Keys.HAVING_VOTER_CARD,
              options: ["Yes", "No"]),

          MyFormBuilderTextField(
            attribute: Keys.VOTER_ID_NMBR,
            labelText: Keys.VOTER_ID_NMBR,
          ),
          MyFormBuilderRadio(
              attribute: Keys.HAVING_PAN_CARD,
              labelText: Keys.HAVING_PAN_CARD,
              options: ["Yes", "No"]),
          MyFormBuilderTextField(
            attribute: Keys.SPECIFY_PAN_CARD_NO,
            labelText: Keys.SPECIFY_PAN_CARD_NO,
          ),
          MyFormBuilderRadio(
              attribute: Keys.ARE_YOU_UNDER_DIVYANG_CATEGORY,
              labelText: Keys.ARE_YOU_UNDER_DIVYANG_CATEGORY,
              options: ["Yes", "No"]),
          MyFormBuilderRadio(
              attribute: Keys.HAVING_DIVYANG_CERTI,
              labelText: Keys.HAVING_DIVYANG_CERTI,
              options: ["Yes", "No", "NA"]),
          MyFormBuilderTextField(
            attribute: Keys.DIVYANG_CERTI_NMBR,
            labelText: Keys.DIVYANG_CERTI_NMBR,
          ),
          MyFormBuilderRadio(
              attribute: Keys.GETTING_DIVYANG_PENSION,
              labelText: Keys.GETTING_DIVYANG_PENSION,
              options: ["Yes", "No", "NA"]),
          MyFormBuilderRadio(
              attribute: Keys.GETTING_OLD_AGE_PENSION,
              labelText: Keys.GETTING_OLD_AGE_PENSION,
              options: ["Yes", "No", "NA"]),
          MyFormBuilderRadio(
              attribute: Keys.GETTING_ANY_WINDOW_PENSION,
              labelText: Keys.GETTING_ANY_WINDOW_PENSION,
              options: ["Yes", "No", "NA"]),
        ],
      ),
    );
  }
}
