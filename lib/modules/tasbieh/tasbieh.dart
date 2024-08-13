import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/setting_provider.dart';

class TasbiehView extends StatefulWidget {
  const TasbiehView({super.key});

  @override
  State<TasbiehView> createState() => _TasbiehViewState();
}

class _TasbiehViewState extends State<TasbiehView> {
  List<String> zekr = [
    "سبحان الله",
    "الحمد الله",
    "الله أكبر",
  ];
  int currentIndex = 0;
  int count = 0;
  double angle=0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    var theme = Theme.of(context);
    return Container(
      width: 1000,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 45,),
                  child: Transform.rotate(
                    angle: angle,

                    child: ImageIcon(
                      const AssetImage("assets/icons/tasbih1.png"),
                      size: 250,
                      color: provider.isLight()
                          ? const Color(0xffB7935F)
                          : const Color(0xffFACC1D),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: ImageIcon(
                    const AssetImage("assets/icons/tasbih0.png"),
                    size: 100,
                    color: provider.isLight()
                        ? const Color(0xffB7935F)
                        : const Color(0xffFACC1D),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "الذكر",
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              height: 81,
              width: 69,
              decoration: BoxDecoration(
                  color: provider.isLight()
                      ? const Color(0xffB7935F)
                      : const Color(0xff141A2E),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "$count",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium,
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          FilledButton(
              onPressed: counter,
              style: FilledButton.styleFrom(
                  backgroundColor: theme.primaryColor
              ),
              child: Text(
                  zekr[currentIndex],
                  style: theme.textTheme.bodyLarge
              )
          ),

        ],
      ),
    );
  }

  counter() {
    angle-=10;
    count++;
    if (count == 34) {
      count = 0;
      if (currentIndex <= 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
    }
    setState(() {

    });
  }
}
