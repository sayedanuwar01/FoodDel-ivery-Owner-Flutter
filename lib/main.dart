import 'package:delivoostores/Locale/locales.dart';
import 'package:delivoostores/Routes/routes.dart';
import 'package:delivoostores/language_cubit.dart';
import 'package:delivoostores/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:delivoostores/Auth/login_navigator.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

void main() {
  runApp(Phoenix(child: DelivooStores()));
}

class DelivooStores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
        BlocProvider<LanguageCubit>(
        create: (context) => LanguageCubit(),
    ),
    BlocProvider<ThemeCubit>(
    create: (context) => ThemeCubit(),
    ),
    ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme){
          return BlocBuilder<LanguageCubit, Locale>(builder: (_, locale) {
            return MaterialApp(
              localizationsDelegates: [
                const AppLocalizationsDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: [
                const Locale('en'),
                const Locale('ar'),
                const Locale('fr'),
                const Locale('id'),
                const Locale('pt'),
                const Locale('es'),
              ],
              locale: locale,
              theme: theme,
              home: LoginNavigator(),
              routes: PageRoutes().routes(),
            );
          });
        },
      ),
    );
  }
}
