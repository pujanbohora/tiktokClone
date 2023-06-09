import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:tiktokclone/BottomNavigation/MyProfile/language_page.dart';
import 'package:tiktokclone/Locale/locale.dart';
import 'package:tiktokclone/Routes/routes.dart';
import 'package:tiktokclone/Theme/style.dart';

import 'Locale/language_cubit.dart';

void main() async {
  runApp(Phoenix(
      child: BlocProvider(
    create: (context) => LanguageCubit(),
    child: Qvid(),
  )));
  // MobileAds.instance.initialize();
}

class Qvid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, Locale>(
      builder: (context, locale) => MaterialApp(
        localizationsDelegates: [
          AppLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en'),
          const Locale('ar'),
          const Locale('id'),
          const Locale('fr'),
          const Locale('pt'),
          const Locale('es'),
          const Locale('it'),
          const Locale('sw'),
          const Locale('tr'),
          const Locale('de'),
          const Locale('ro'),
        ],
        theme: appTheme,
        locale: locale,
        home: ChangeLanguagePage(),
        routes: PageRoutes().routes(),
      ),
    );
  }
}
