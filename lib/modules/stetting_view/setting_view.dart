import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:islamy/core/setting_provider.dart';
import 'package:provider/provider.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    var languageTranslate =AppLocalizations.of(context)!;
    var provider = Provider.of<SettingProvider>(context);
    const List<String> lang = [
      'English',
      'عربي',
    ];
    const List<String> mode = [
      'Light',
      'Dark',
    ];
    var theme = Theme.of(context);
    return Center(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            languageTranslate.settings,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(
            height: 40,
          ),
            Text(
            languageTranslate.language,
            style: theme.textTheme.bodyLarge!
            ,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDropdown<String>(
            hintText: 'Select job role',
            decoration:CustomDropdownDecoration(
              closedFillColor: provider.isLight()?Colors.white :Colors.black,
              expandedFillColor: provider.isLight()?Colors.white :Colors.black,

            ) ,
            items: lang,
            initialItem: (provider.currentLang=="en")?lang[0]:lang[1],
            onChanged: (value) {
              if(value=="English"){
                provider.changeLang("en");
              }
              if(value=="عربي"){
                provider.changeLang("ar");
              }
              print('changing value to: $value');
            },
          ),

          const SizedBox(
            height: 70,
          ),
          Text(
            languageTranslate.mode,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDropdown<String>(
            hintText: 'Select job role',
            items: mode,
            initialItem:(provider.isLight())?mode[0]:mode[1],
            decoration:CustomDropdownDecoration(
              closedFillColor: provider.isLight()?Colors.white :Colors.black,
              expandedFillColor: provider.isLight()?Colors.white :Colors.black,

            ) ,
            onChanged: (value) {
              if(value=="Light"){
                provider.changeMode(ThemeMode.light);
              }
              if(value=="Dark"){
                provider.changeMode(ThemeMode.dark);
              }
              print('changing value to: $value');
            },
          ),

        ],
      ),
    ));
  }
}
