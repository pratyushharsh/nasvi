import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:nasvi/repository/worker-repo.dart';
import 'package:nasvi/screens/screen.dart';

class UserForm extends StatefulWidget {
  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  int count = 0;

  Widget _body() {
    if (count == 0) {
      return PersonalDetailCard(
        formKey: _fbKey,
      );
    } else if (count == 1) {
      return SocialSecurity();
    } else if (count == 2) {
      return Occupation(
        formKey: _fbKey,
      );
    } else if (count == 3) {
      return Review(
        values: _fbKey.currentState.value,
      );
    }
  }

  void _showSubmitDialogue() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Do You Want To Submit The Form"),
            actions: <Widget>[
              FlatButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              OutlineButton(
                child: Text("Yes"),
                onPressed: () async {
                  if (_fbKey.currentState.saveAndValidate()) {
                    await RepositoryProvider.of<WorkersRepository>(context).addNewWorker(_fbKey.currentState.value);
                    Navigator.of(context).pop(true);
                    return;
                  }
                },
              )
            ],
          );
        }).then((value) {
          if (value != null && value) {

          }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          if (count > 0)
            FloatingActionButton.extended(
              heroTag: "decrease",
              onPressed: () {
                _fbKey.currentState.save();
                if (_fbKey.currentState.validate()) {
                  setState(() {
                    if (count > 0) count--;
                  });
                }
                print(_fbKey.currentState.value);
              },
              label: Text("Back"),
            ),
          if (count < 3)
            FloatingActionButton.extended(
              heroTag: "increase",
              onPressed: () {
                _fbKey.currentState.save();
                print(_fbKey.currentState.value);
                if (_fbKey.currentState.validate()) {
                  setState(() {
                    if (count < 10) count++;
                  });
                }
              },
              label: Text("Next"),
            ),
          if (count == 3)
            FloatingActionButton.extended(
                onPressed: _showSubmitDialogue, label: Text("Submit"))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: FormBuilder(
            autovalidate: true,
            initialValue: _fbKey?.currentState?.value ?? {},
            key: _fbKey,
            readOnly: false,
            child: _body(),
          ),
        ),
      ),
    );
  }
}
