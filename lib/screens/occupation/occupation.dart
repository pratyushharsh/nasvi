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
      else if (_occup.compareTo(Keys.STREET_VENDOR_OR_REHDI_PATRI) == 0) {
        return StreetVendor();
      }
      else if (_occup.compareTo(Keys.SMALL_ENTERPRISE) == 0) {
        return SmallEnterrise();
      }
      else if (_occup.compareTo(Keys.AGRICULTURAL_LABR) == 0) {
        return AgriculturalLabour();
      }
      else if (_occup.compareTo(Keys.CONSTRUCTION_WORKER) == 0) {
        return ConstructionWorker();
      }
      else if (_occup.compareTo(Keys.DOMESTIC_WORKER) == 0) {
        return DomesticWorker();
      }
      else if (_occup.compareTo(Keys.HOME_BASED_WORKER) == 0) {
        return HomeBasedWorker();
      }
      else if (_occup.compareTo(Keys.RICKSHAW_PULLER) == 0) {
        return RickshawPuller();
      }
      else if (_occup.compareTo(Keys.AUTO_RICKSHAW) == 0) {
        return AutoRickshaw();
      }
      else if (_occup.compareTo(Keys.E_RICKSHAW) == 0) {
        return Erickshaw();
      }
      else if (_occup.compareTo(Keys.PRIVATE_JOB) == 0) {
        return PrivateJob();
      }
      else if (_occup.compareTo(Keys.OTHERS) == 0) {
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
              Keys.STREET_VENDOR_OR_REHDI_PATRI,
              Keys.SMALL_ENTERPRISE,
              Keys.FARMER,
              Keys.AGRICULTURAL_LABR,
              Keys.CONSTRUCTION_WORKER,
              Keys.WASTE_WORKER,
              Keys.DOMESTIC_WORKER,
              Keys.HOME_BASED_WORKER,
              Keys.RICKSHAW_PULLER,
              Keys.AUTO_RICKSHAW,
              Keys.E_RICKSHAW,
              Keys.PRIVATE_JOB,
              Keys.OTHERS,
            ],
          ),
          Expanded(child: _buildOccupationCard())
        ],
      ),
    );
  }
}
