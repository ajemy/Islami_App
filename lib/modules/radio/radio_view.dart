
import 'package:flutter/material.dart';
import 'package:islamy/core/setting_provider.dart';
import 'package:provider/provider.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {

  bool isPlay = false;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    var theme = Theme.of(context);
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/Radio_image.png"),
        const SizedBox(
          height: 20,
        ),
        Text(
          "إذاعة القرآن الكريم",
          style: theme.textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(
                Icons.skip_previous,
                size: 50,
              ),
              onPressed: () {},
            ),
            IconButton(
              onPressed: () async {
                setState(() {
                  isPlay = !isPlay;
                });
              },
              icon: isPlay
                  ? const Icon(Icons.pause, size: 50)
                  : const Icon(Icons.play_arrow, size: 50),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.skip_next, size: 50)),
          ],
        )
      ],
    ));
  }
}
