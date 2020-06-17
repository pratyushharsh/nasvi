import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/screens/occupation/farmer.dart';
import 'package:nasvi/screens/occupation/waste-worker.dart';
import 'package:nasvi/widget/custom-widget.dart';

class Occupation extends StatefulWidget {
  final GlobalKey<FormBuilderState> formKey;

  const Occupation({Key key, this.formKey}) : super(key: key);

  @override
  _OccupationState createState() => _OccupationState();
}

class _OccupationState extends State<Occupation> {
  String _occup;

  @override
  void initState() {
    super.initState();
    if (widget.formKey?.currentState?.value != null) {
      _occup = widget.formKey.currentState.value[Keys.OCCUPATION];
    }
  }

  _buildOccupationCard() {
    if (_occup != null) {
      if (_occup.compareTo(Keys.WASTE_WORKER) == 0) {
        return WasteWorker();
      } else if (_occup.compareTo(Keys.FARMER) == 0) {
        return Farmer();
      }
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          MyFormBuilderDropdown(
            onChanged: (val) {
              setState(() {
                _occup = val;
              });
            },
            attribute: Keys.OCCUPATION,
            labelText: Keys.OCCUPATION,
            // initialValue: 'Male',
            hint: 'Select Occupation',
            items: [
              Keys.FARMER,
              Keys.WASTE_WORKER,
            ],
          ),
          Expanded(child: _buildOccupationCard())
        ],
      ),
    );
  }
}
