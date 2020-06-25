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
                platform: defaultTargetPlatform,
              )),
          ),
          BlocProvider<WorkerBloc>(
            create: (BuildContext context) =>
                WorkerBloc(RepositoryProvider.of(context)),
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

  Widget _buildLocaleChip(Locale l) {
    String language = "";
    String language_locale = "";
    if (l.toLanguageTag().compareTo("en") == 0) {
      language = "English";
    } else if (l.toLanguageTag().compareTo("hi") == 0) {
      language = "हिन्दी";
      language_locale = "Hindi";
    } else {
      language = l.toLanguageTag();
    }

    return SizedBox(
      height: 80,
      width: 100,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (language != null && language.isNotEmpty)
              Text(
                language,
                textScaleFactor: 1.7,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            if (language_locale != null && language_locale.isNotEmpty)
              Text(
                language_locale,
                textScaleFactor: 1.2,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, Router.USER_FORM_ROUTE);
        },
        label: Text("Continue"),
        icon: Icon(Icons.navigate_next),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.g_translate,
              size: 40,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Choose your language",
              textScaleFactor: 1.2,
            ),
            SizedBox(
              height: 60,
            ),
            BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
              return Center(
                child: Wrap(
                    spacing: 30,
                    runSpacing: 15,
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: S.delegate.supportedLocales
                        .map((e) => ChoiceChip(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              elevation: 6,
                              label: Container(
                                margin: EdgeInsets.all(8),
                                child: _buildLocaleChip(e),
                              ),
                              selected: state.locale == e,
                              onSelected: (selected) {
                                if (selected) {
                                  BlocProvider.of<ThemeBloc>(context)
                                      .add(ChangeLocale(locale: e));
                                }
                              },
                            ))
                        .toList()),
              );
            }),
          ],
        ),
      ),
    );
  }
}
