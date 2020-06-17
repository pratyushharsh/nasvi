import 'package:flutter/material.dart';
import 'package:nasvi/screens/user-form.dart';

class Router {

  static const String USER_FORM_ROUTE = '/userForm';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case USER_FORM_ROUTE:
        return MaterialPageRoute(builder: (_) => UserForm());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}'),),
        ));
    }
  }
}