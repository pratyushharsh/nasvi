import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import '../keys.dart';

class MyFormBuilderRadio extends StatelessWidget {
  final String labelText;
  final String attribute;
  final List<String> options;

  MyFormBuilderRadio(
      {Key key,
      @required this.labelText,
      @required this.attribute,
      @required this.options})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.all(6),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(Intl.message(labelText), style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              FormBuilderRadio(
                decoration: InputDecoration(border: InputBorder.none),
                attribute: attribute,
                options: options
                    .map((lang) => FormBuilderFieldOption(
                          value: lang,
                          child: Text('$lang'),
                        ))
                    .toList(growable: false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFormBuilderTextField extends StatelessWidget {
  final String attribute;
  final String labelText;

  MyFormBuilderTextField({Key key, this.attribute, this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.all(6),
        child: FormBuilderTextField(
          attribute: attribute,
          decoration: InputDecoration(
              labelText: Intl.message(labelText), border: OutlineInputBorder()),
        ),
      ),
    );
  }
}

class MyFormBuilderDropdown extends StatelessWidget {
  final String attribute;
  final String labelText;
  final List<String> items;
  final String hint;
  final ValueChanged onChanged;

  const MyFormBuilderDropdown(
      {Key key,
      this.attribute,
      this.labelText,
      @required this.items,
      this.hint,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(6),
      child: FormBuilderDropdown(
        onChanged: onChanged,
        attribute: attribute,
        decoration: InputDecoration(
            labelText: Intl.message(labelText), border: OutlineInputBorder()),
        // initialValue: 'Male',
        hint: hint != null ? Text(hint) : null,
        validators: [FormBuilderValidators.required()],
        items: items
            .map((s) => DropdownMenuItem(value: s, child: Text("$s")))
            .toList(),
      ),
    );
  }
}

class CustomYesNoSpecify extends StatefulWidget {
  final GlobalKey<FormBuilderState> formKey;
  final String attribute;
  final String labelText;

  const CustomYesNoSpecify(
      {Key key, this.attribute, this.labelText, this.formKey})
      : super(key: key);

  @override
  _CustomYesNoSpecifyState createState() => _CustomYesNoSpecifyState();
}

class _CustomYesNoSpecifyState extends State<CustomYesNoSpecify> {
  final List<String> options = [Keys.YES, Keys.NO];

  String curVal;

  @override
  void initState() {
    super.initState();
    curVal = widget
        .formKey.currentState.fields[widget.attribute]?.currentState?.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          border: Border.all()),
      child: Card(
        margin: EdgeInsets.all(6),
        child: Column(
          children: <Widget>[
            FormBuilderRadio(
              onChanged: (val) {
                setState(() {
                  curVal = widget.formKey.currentState.fields[widget.attribute]
                      ?.currentState?.value;
                });
              },
              decoration: InputDecoration(
                  labelText: widget.labelText, border: InputBorder.none),
              attribute: widget.attribute,
              options: options
                  .map((lang) => FormBuilderFieldOption(
                        value: lang,
                        child: Text('$lang'),
                      ))
                  .toList(growable: false),
            ),
            curVal != null && curVal == Keys.YES
                ? FormBuilderTextField(
                    attribute: "${widget.labelText}-specify",
                    decoration: InputDecoration(
                        labelText: "If Other, please specify",
                        border: InputBorder.none),
                    validators: [
                      (val) {
                        if (widget.formKey.currentState.fields[widget.attribute]
                                    .currentState.value ==
                                Keys.YES &&
                            (val == null || val.isEmpty))
                          return "Kindly specify your language";
                        return null;
                      },
                    ],
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
