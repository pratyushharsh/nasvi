import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nasvi/bloc/worker/bloc.dart';
import 'package:nasvi/repository/worker-repo.dart';
import 'package:nasvi/simple_bloc_delegate.dart';

import 'bloc/theme/theme_bloc.dart';
import 'bloc/theme/theme_event.dart';
import 'bloc/theme/theme_state.dart';
import 'config/router.dart';
import 'generated/l10n.dart';

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<WorkersRepository>(
          create: (context) => WorkersRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ThemeBloc>(
            create: (BuildContext context) => ThemeBloc()
              ..add(InitialTheme(
                  isTestMode: false,
                  locale: null,
                  themeMode: ThemeMode.system,
                  platform: defaultTargetPlatform,)),
          ),
          BlocProvider<WorkerBloc>(
            create: (BuildContext context) => WorkerBloc(),
          )
        ],
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
        builder: (BuildContext context, ThemeState state) {
      return MaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        locale: state.locale,
        localeResolutionCallback: (locale, supportedLocales) {
          return locale;
        },
        onGenerateRoute: Router.generateRoute,
        home: MainScreen(
          locale: state.locale,
        ),
      );
    });
  }
}

class MainScreen extends StatelessWidget {
  final Locale locale;

  const MainScreen({Key key, this.locale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return DropdownButtonFormField(
                  isExpanded: false,
                  decoration: InputDecoration(
                      labelText: "Choose Your Language",
                      border: OutlineInputBorder()),
                  value: state.locale,
                  onChanged: (val) {
                    BlocProvider.of<ThemeBloc>(context)
                        .add(ChangeLocale(locale: val));
                  },
                  items: S.delegate.supportedLocales.map((e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(e.toString()),
                    );
                  }).toList(),
                );
              },
            ),
            RaisedButton(
              child: Text("Continue"),
              onPressed: () {
                Navigator.pushNamed(context, Router.USER_FORM_ROUTE);
              },
            )
          ],
        ),
      ),
    );
  }
}
