import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamy/layout/layout_view.dart';

class SplashView extends StatefulWidget {
  static String routeName="/";
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, LayoutView.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/splash.png",fit: BoxFit.cover,);
  }
}



