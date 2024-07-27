import 'package:flutter/material.dart';
import 'package:islamy/modules/hadith/hadith_view.dart';
import 'package:islamy/modules/quran/quran_view.dart';
import 'package:islamy/modules/radio/radio_view.dart';
import 'package:islamy/modules/stetting_view/setting_view.dart';
import 'package:islamy/modules/tasbieh/tasbieh.dart';

class LayoutView extends StatefulWidget {
  static String routeName = "layout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List<Widget> itemView=[
    QuranView(),
    HadithView(),
    TasbiehView(),
    RadioView(),
    SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/default_bg.png",
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        body: itemView[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (i) {
            currentIndex = i;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              label: "Quran",
              icon: ImageIcon(
                AssetImage("assets/icons/quran.png"),
              ),
            ),
            BottomNavigationBarItem(
              label: "Hadith",
              icon: ImageIcon(
                AssetImage("assets/icons/hadith.png"),
              ),
            ),
            BottomNavigationBarItem(
              label: "Tasbieh",
              icon: ImageIcon(
                AssetImage("assets/icons/tasbieh.png"),
              ),
            ),
            BottomNavigationBarItem(
              label: "Radio",
              icon: ImageIcon(
                AssetImage("assets/icons/radio.png"),
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "settings"),
          ],
        ),
      ),
    );
  }
}
