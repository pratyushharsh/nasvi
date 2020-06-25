import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import '../keys.dart';

class MyFormBuilderRadio extends StatelessWidget {
  final String labelText;
  final String attribute;
  final List<String> options;
  final List<FormFieldValidator> validators;

  MyFormBuilderRadio(
      {Key key,
      @required this.labelText,
      @required this.attribute,
      @required this.options, this.validators = const []})
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
                validators: validators,
                decoration: InputDecoration(border: InputBorder.none),
                attribute: attribute,
                options: options
                    .map((lang) => FormBuilderFieldOption(
                          value: lang,
                          child: Text(Intl.message('$lang')),
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
  final List<FormFieldValidator> validators;
  final TextInputType keyboardType;

  MyFormBuilderTextField({Key key, this.attribute, this.labelText, this.validators = const [], this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.all(6),
        child: FormBuilderTextField(
          validators: validators,
          attribute: attribute,
            keyboardType: keyboardType,
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
  final List<FormFieldValidator> validators;

  const MyFormBuilderDropdown(
      {Key key,
      this.attribute,
      this.labelText,
      @required this.items,
      this.hint,
      this.onChanged, this.validators = const []})
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
        hint: hint != null ? Text(Intl.message(hint)) : null,
        validators: [FormBuilderValidatorss.required(), ...validators],
        items: items
            .map((s) => DropdownMenuItem(value: s, child: Text(s != null ? Intl.message(s) : "")))
            .toList(),
      ),
    );
  }
}




class CustomYesNoSpecify extends StatefulWidget {
  final GlobalKey<FormBuilderState> formKey;
  final String attribute;
  final String labelText;
  final List<FormFieldValidator> validators;
  final String yesLabelText;
  final TextInputType keyboardType;

  const CustomYesNoSpecify(
      {Key key, this.attribute, this.labelText, this.formKey, this.validators = const [], this.yesLabelText, this.keyboardType})
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
    curVal = widget?.formKey?.currentState?.value[widget.attribute]??null;
  }

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
                child: Text(Intl.message(widget.labelText), style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              FormBuilderRadio(
                onChanged: (val) {
                  setState(() {
                    curVal = widget?.formKey?.currentState?.fields[widget.attribute]
                        ?.currentState?.value;
                  });
                },
                decoration: InputDecoration(border: InputBorder.none),
                attribute: widget.attribute,
                options: options
                    .map((o) => FormBuilderFieldOption(
                          value: o,
                          child: Text(Intl.message(o)),
                        ))
                    .toList(growable: false),
              ),
              curVal != null && curVal == Keys.YES
                  ? FormBuilderTextField(
                keyboardType: widget.keyboardType,
                      attribute: "${widget.labelText}-specify",
                      decoration: InputDecoration(
                          labelText: Intl.message(widget.yesLabelText),
                          border: InputBorder.none),
                      validators: [
                        (val) {
                          if (widget.formKey.currentState.fields[widget.attribute]
                                      .currentState.value ==
                                  Keys.YES &&
                              (val == null || val.isEmpty))
                            return "Field is required.";
                          return null;
                        },
                        if (widget.validators != null) ...widget.validators
                      ],
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );

  }
}
@override
class FormBuilderValidatorss {
  /// [FormFieldValidator] that requires the field have a non-empty value.
  static FormFieldValidator required({
    String errorText = Keys.FIELD_CANNOT_EMPTY,
  }) {
    return (valueCandidate) {
      if (valueCandidate == null ||
          ((valueCandidate is Iterable ||
              valueCandidate is String ||
              valueCandidate is Map) &&
              valueCandidate.length == 0)) {
        return Intl.message(errorText);
      }
      return null;
    };
  }
}
