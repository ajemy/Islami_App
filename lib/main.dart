import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy/core/application_theme_manger.dart';
import 'package:islamy/core/setting_provider.dart';
import 'package:islamy/layout/layout_view.dart';
import 'package:islamy/modules/hadith/hadith_detail_view.dart';
import 'package:islamy/modules/quran/quran_detail_view.dart';
import 'package:islamy/modules/splash/splash_view.dart';
import 'package:islamy/core/setting_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = SettingProvider();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.light ,
      title: 'Flutter Demo',
      localizationsDelegates:AppLocalizations.localizationsDelegates,
      supportedLocales:AppLocalizations.supportedLocales,
      theme: AppThemeManger.darkThemeData,
      darkTheme: AppThemeManger.darkThemeData,
      initialRoute: "/",
      locale:  Locale(provider.currentLang),
      routes: {
        SplashView.routeName:(context)=>const SplashView(),
        LayoutView.routeName:(context)=> const LayoutView(),
        QuranDetailView.quranDetailViewRoute:(context)=> const QuranDetailView(),
        HadithDetailView.hadithDetailViewRoute:(context)=> const HadithDetailView()
      },
    );
  }
}


