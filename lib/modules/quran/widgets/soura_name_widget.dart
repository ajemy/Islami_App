import 'package:flutter/material.dart';

class SouraNameWidget extends StatelessWidget {
  final SouraData souraData;

  const SouraNameWidget({super.key, required this.souraData});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            "${souraData.index + 1}",
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        const SizedBox(height: 40, child: VerticalDivider()),
        Expanded(
          child: Text(
            souraData.souraName,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class SouraData {
  int index;
  String souraName;

  SouraData({
    required this.index,
    required this.souraName,
  });
}
