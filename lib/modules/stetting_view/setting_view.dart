import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Text(
        "Setting",
        style: theme.textTheme.titleLarge,
      ),
    );
  }
}
