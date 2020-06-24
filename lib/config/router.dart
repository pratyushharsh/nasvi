import 'package:flutter/material.dart';
import 'package:nasvi/screens/thanks.dart';
import 'package:nasvi/screens/user-form.dart';

class Router {

  static const String USER_FORM_ROUTE = '/userForm';
  static const String THANKYOU_ROUTE = "/thanks";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case USER_FORM_ROUTE:
        return MaterialPageRoute(builder: (_) => UserForm());
      case THANKYOU_ROUTE:
        String ref = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => ThanksScreen(ref: ref,));
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}'),),
        ));
    }
  }
}