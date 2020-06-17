import 'package:flutter/material.dart';
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