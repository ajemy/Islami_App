import 'package:flutter/material.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> lang = [
      'English',
      'عربي',
    ];
    const List<String> mode = [
      'Light',
      'Dark',
    ];
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    var theme = Theme.of(context);
    return Center(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Settings",
            textAlign: TextAlign.center,
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(
            height: 40,
          ),
            Text(
            "Language",
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDropdown<String>(
            hintText: 'Select job role',
            items: lang,
            initialItem: lang[0],
            onChanged: (value) {
              print('changing value to: $value');
            },
          ),

          const SizedBox(
            height: 70,
          ),
          Text(
            "Mode",
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDropdown<String>(
            hintText: 'Select job role',
            items: mode,
            initialItem: mode[0],
            onChanged: (value) {
              print('changing value to: $value');
            },
          ),

        ],
      ),
    ));
  }
}
