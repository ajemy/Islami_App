import 'package:flutter/material.dart';
import 'package:islamy/core/application_theme_manger.dart';
import 'package:islamy/layout/layout_view.dart';
import 'package:islamy/modules/quran/quran_detail_view.dart';
import 'package:islamy/modules/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemeManger.themeData,
      initialRoute: "/",
      routes: {
        SplashView.routeName:(context)=>const SplashView(),
        LayoutView.routeName:(context)=> const LayoutView(),
        QuranDetailView.quranDetailViewRoute:(context)=> const QuranDetailView(),
      },
    );
  }
}


