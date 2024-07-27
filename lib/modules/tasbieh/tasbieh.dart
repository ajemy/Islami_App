import 'package:flutter/material.dart';

class TasbiehView extends StatelessWidget {
  const TasbiehView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Text(
        "Tasbieh",
        style: theme.textTheme.titleLarge,
      ),
    );
  }
}
