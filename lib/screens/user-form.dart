import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:nasvi/bloc/theme/theme_bloc.dart';
import 'package:nasvi/bloc/theme/theme_event.dart';
import 'package:nasvi/bloc/worker/bloc.dart';
import 'package:nasvi/config/router.dart';
import 'package:nasvi/screens/screen.dart';
import 'package:nasvi/screens/social-security.dart';

class UserForm extends StatefulWidget {
  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  int count = 0;
  Occupation occWidget;

  Widget _body() {
    if (count == 0) {
      return PersonalDetailCard(
        formKey: _fbKey,
      );
    } else if (count == 1) {
      return PersonalDetail(formKey: _fbKey,);
    }
    else if (count == 2) {
      return SocialSecurity(formKey: _fbKey,);
    }
    else if (count == 3) {
      return Skill(formKey: _fbKey,);
    }
    else if (count == 4) {
      return occWidget = Occupation(
        formKey: _fbKey,
      );

    } else if (count == 5) {
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
                onPressed: () {
                  if (_fbKey.currentState.saveAndValidate()) {
                    Navigator.of(context).pop(true);
                  }
                },
              )
            ],
          );
        }).then((value) {
      if (value != null && value) {
        BlocProvider.of<WorkerBloc>(context).add(AddNewWorker(_fbKey.currentState.value));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
//          PopupMenuButton<Locale>(
//            icon: Icon(Icons.g_translate),
//            onSelected: (val) {
//              BlocProvider.of<ThemeBloc>(context)
//                  .add(ChangeLocale(locale: val));
//            },
//            itemBuilder: (BuildContext context) {
//              return S.delegate.supportedLocales.map((e) {
//                return PopupMenuItem<Locale>(
//                  value: e,
//                  child: Text(e.languageCode),
//                );
//              }).toList();
//            },
//          ),
          IconButton(
            icon: Icon(Icons.minimize)
          ),
          IconButton(
            icon: Icon(Icons.add),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          if (count > 0)
            FloatingActionButton.extended(
              heroTag: "decrease",
              onPressed: () {
                _fbKey.currentState.save();
                if (_fbKey.currentState.validate()) {
                  if (count == 4 && occWidget != null) {
                    if (occWidget.isValid()) {
                      setState(() {
                        if (count > 0) count--;
                      });
                    }
                  } else {
                    setState(() {
                      if (count > 0) count--;
                    });
                  }
                }
                print(_fbKey.currentState.value);
              },
              label: Text("Back"),
            ),
          if (count < 5)
            FloatingActionButton.extended(
              heroTag: "increase",
              onPressed: () {
                _fbKey.currentState.save();
                print(_fbKey.currentState.value);
                if (_fbKey.currentState.validate()) {
                  if (count == 4 && occWidget != null) {
                    if (occWidget.isValid()) {
                      setState(() {
                        if (count < 10) count++;
                      });
                    }
                  } else {
                    setState(() {
                      if (count < 10) count++;
                    });
                  }
                }
              },
              label: Text("Next"),
            ),
          if (count == 5)
            FloatingActionButton.extended(
                onPressed: _showSubmitDialogue, label: Text("Submit"))
        ],
      ),
      body: BlocListener<WorkerBloc, WorkerState>(
        listener: (context, state) {
          if (state is AddingNewWorker) {
            Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Adding...'),
                      CircularProgressIndicator(),
                    ],
                  ),
                ),
              );
          }

          if (state is SuccessAddingWorker) {
            Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  backgroundColor: Colors.green,
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Successfully Added Worker'),
                    ],
                  ),
                ),
              );
            Navigator.of(context).pushReplacementNamed(Router.THANKYOU_ROUTE, arguments: state.referenceNo );
          }

          if (state is ErrorWhileAddingWorker) {
            Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Error Adding Worker. Please Try Again'),
                    ],
                  ),
                ),
              );
          }
        },
        child: SafeArea(
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
      ),
    );
  }
}
