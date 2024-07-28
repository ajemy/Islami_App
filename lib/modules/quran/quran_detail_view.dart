import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class QuranDetailView extends StatelessWidget {
  static String quranDetailViewRoute = "quranDetail";

  const QuranDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/default_bg.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        body: Container(
          margin: const EdgeInsets.only(top:20,bottom: 120, left: 30, right: 30),
          decoration:  BoxDecoration(color: const Color(0xffF8F8F8).withOpacity(0.85),
            borderRadius:BorderRadius.circular(25) ,
          ),

        ),
      ),
    );
  }
}
