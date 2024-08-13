import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/core/setting_provider.dart';
import 'package:islamy/modules/hadith/hadith_view.dart';
import 'package:islamy/modules/quran/quran_view.dart';
import 'package:islamy/modules/radio/radio_view.dart';
import 'package:islamy/modules/stetting_view/setting_view.dart';
import 'package:islamy/modules/tasbieh/tasbieh.dart';
import 'package:provider/provider.dart';

class LayoutView extends StatefulWidget {
  static String routeName = "layout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {

  int currentIndex = 0;
  List<Widget> itemView=[
    const QuranView(),
    const HadithView(),
    const TasbiehView(),
    const RadioView(),
    const SettingView(),
  ];


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);

    var lang =AppLocalizations.of(context)!;
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                provider.getBackgroundImage()
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title:  Text(lang.islamy),
        ),
        body: itemView[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (i) {
            currentIndex = i;
            setState(() {});
          },
          items:  [
            BottomNavigationBarItem(
              label: lang.quran,
              icon: const ImageIcon(
                AssetImage("assets/icons/quran.png"),
              ),
            ),
            BottomNavigationBarItem(
              label: lang.hadith,
              icon: const ImageIcon(
                AssetImage("assets/icons/hadith.png"),
              ),
            ),
            BottomNavigationBarItem(
              label: lang.tasbieh,
              icon: const ImageIcon(
                AssetImage("assets/icons/tasbieh.png"),
              ),
            ),
            BottomNavigationBarItem(
              label: lang.radio,
              icon: const ImageIcon(
                AssetImage("assets/icons/radio.png"),
              ),
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.settings), label: lang.settings),
          ],
        ),
      ),
    );
  }
}
