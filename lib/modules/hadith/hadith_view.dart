import 'package:flutter/material.dart';

class HadithView extends StatelessWidget {
  const HadithView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Text(
        "Hadith",
        style: theme.textTheme.titleLarge,
      ),
    );
  }
}
