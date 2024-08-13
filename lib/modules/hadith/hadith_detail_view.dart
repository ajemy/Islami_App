import 'package:flutter/material.dart';
import 'package:islamy/core/setting_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/modules/hadith/hadith_view.dart';
import 'package:provider/provider.dart';

class HadithDetailView extends StatefulWidget {
  static String hadithDetailViewRoute = "hadithView";

  const HadithDetailView({super.key});

  @override
  State<HadithDetailView> createState() => _HadithDetailViewState();
}

class _HadithDetailViewState extends State<HadithDetailView> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    var lang = AppLocalizations.of(context)!;
    ThemeData theme = Theme.of(context);
    HadithDetail hadithDetail =
    ModalRoute
        .of(context)
        ?.settings
        .arguments as HadithDetail;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: provider.isLight() ? const AssetImage(
                "assets/images/default_bg.png") : const AssetImage(
                "assets/images/home_dark_bg.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(lang.islamy),
        ),
        body: Container(
          margin:
          const EdgeInsets.only(top: 20, bottom: 50, left: 30, right: 30),
          decoration: BoxDecoration(
            color: provider.isLight()
                ? const Color(0xffF8F8F8).withOpacity(0.85)
                : const Color(0xff141A2E).withOpacity(0.85),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    hadithDetail.hadithTitle,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: provider.isLight() ? Colors.white : const Color(
                          0xffFACC1D),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.play_circle_fill,
                    size: 35,
                  ),
                ],
              ),
              const Divider(
                height: 20,
                thickness: 2,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Text(
                      hadithDetail.hadithBody,
                      style: theme.textTheme.bodySmall!.copyWith(
                          color: provider.isLight()
                              ? Colors.white
                              : const Color(0xffFACC1D)
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
