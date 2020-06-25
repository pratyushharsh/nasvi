import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:nasvi/keys.dart';
import 'package:nasvi/screens/occupation/agricultural-labour.dart';
import 'package:nasvi/screens/occupation/auto-rickshaw.dart';
import 'package:nasvi/screens/occupation/construction-worker.dart';
import 'package:nasvi/screens/occupation/domestic-worker.dart';
import 'package:nasvi/screens/occupation/e-rickshaw.dart';
import 'package:nasvi/screens/occupation/farmer.dart';
import 'package:nasvi/screens/occupation/home-based-worker.dart';
import 'package:nasvi/screens/occupation/other.dart';
import 'package:nasvi/screens/occupation/private-job.dart';
import 'package:nasvi/screens/occupation/rickshaw-puller.dart';
import 'package:nasvi/screens/occupation/small-enterprise.dart';
import 'package:nasvi/screens/occupation/street-vendor.dart';
import 'package:nasvi/screens/occupation/waste-worker.dart';
import 'package:nasvi/widget/custom-card.dart';
import 'package:nasvi/widget/custom-widget.dart';

import '../../keys.dart';

class Occupation extends StatefulWidget {
  final GlobalKey<FormBuilderState> formKey;
  OccupationCard o;

  Occupation({Key key, this.formKey}) : super(key: key);

  bool isValid() {
    if (o != null) {
      return o.isFormValid();
    }
    return true;
  }

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

  void _onChanged(Map<String, dynamic> fieldData) {
    print('Field data $fieldData');
    widget.formKey.currentState
        .setAttributeValue("occupation-props", fieldData);
  }

  _buildOccupationCard() {
    if (_occup != null) {
      if (_occup.compareTo(Keys.WASTE_WORKER) == 0) {
        return WasteWorker();
      } else if (_occup.compareTo(Keys.FARMER) == 0) {
        return Farmer();
      } else if (_occup.compareTo(Keys.STREET_VENDOR_OR_REHDI_PATRI) == 0) {
        return StreetVendor(formKey: widget.formKey,);
      } else if (_occup.compareTo(Keys.SMALL_ENTERPRISE) == 0) {
        return SmallEnterrise(formKey: widget.formKey,);
      } else if (_occup.compareTo(Keys.AGRICULTURAL_LABR) == 0) {
        return AgriculturalLabour();
      } else if (_occup.compareTo(Keys.CONSTRUCTION_WORKER) == 0) {
        return ConstructionWorker(formKey: widget.formKey,);
      } else if (_occup.compareTo(Keys.DOMESTIC_WORKER) == 0) {
        return DomesticWorker();
      } else if (_occup.compareTo(Keys.HOME_BASED_WORKER) == 0) {
        return HomeBasedWorker();
      } else if (_occup.compareTo(Keys.RICKSHAW_PULLER) == 0) {
        return RickshawPuller();
      } else if (_occup.compareTo(Keys.AUTO_RICKSHAW) == 0) {
        return AutoRickshaw();
      } else if (_occup.compareTo(Keys.E_RICKSHAW) == 0) {
        return Erickshaw();
      } else if (_occup.compareTo(Keys.PRIVATE_JOB) == 0) {
        return PrivateJob();
      } else if (_occup.compareTo(Keys.OTHERS) == 0) {
        return Other();
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
              onChanged: (val) async {
                _onChanged(null);
                setState(() {
                  _occup = val;
                });
              },
              attribute: Keys.OCCUPATION,
              labelText: Keys.OCCUPATION,
              // initialValue: 'Male',
              hint: Keys.HINT_OCCUPATION,
              items: Keys.OCCUPATION_TYPES),
          Expanded(
            child: widget.o = OccupationCard(
              onChanged: _onChanged,
              initialData: widget.formKey.currentState.value["occupation-props"],
              child: _buildOccupationCard(),
            ),
          ),
//          FormBuilderCustomField(
//            attribute: "occupation-props",
//            formField: FormField(
//              builder: (FormFieldState<dynamic> field) {
//                return Expanded(child: _buildOccupationCard());
//              },
//            ),
//          ),
        ],
      ),
    );
  }
}
