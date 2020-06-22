import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
class MyCustomCard extends StatelessWidget {

  final Widget child;
  const MyCustomCard({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(10),
            child: child
        ),
      ),
    );
  }
}

class OccupationCard extends StatelessWidget {

  GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  final Widget child;
  final Function onChanged;
  final Map initialData;

  OccupationCard({Key key, this.child, this.onChanged, this.initialData}) : super(key: key);

  bool isFormValid() {
    return _fbKey.currentState.validate();
  }

  @override
  Widget build(BuildContext context) {
    print('initial - data $initialData');
    return FormBuilder(
      key: _fbKey,
      onChanged: onChanged,
      autovalidate: true,
      initialValue: initialData??{},
      child: child,
    );
  }
}
