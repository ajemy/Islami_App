import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/modules/quran/widgets/soura_name_widget.dart';

class QuranDetailView extends StatefulWidget {
  static String quranDetailViewRoute = "quranDetail";

  const QuranDetailView({super.key});

  @override
  State<QuranDetailView> createState() => _QuranDetailViewState();
}

class _QuranDetailViewState extends State<QuranDetailView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    SouraData data = ModalRoute.of(context)?.settings.arguments as SouraData;
    if (content.isEmpty) loadSouraData(data.index);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/default_bg.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        body: Container(
          margin:
              const EdgeInsets.only(top: 20, bottom: 50, left: 30, right: 30),
          decoration: BoxDecoration(
            color: const Color(0xffF8F8F8).withOpacity(0.85),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " سورة ${data.souraName}  ",
                    style: theme.textTheme.bodyMedium,
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
              // Text(contentList[200]),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    "[${index+1}] ${contentList[index]} ",
                    style: theme.textTheme.bodySmall?.copyWith(height: 1.8),
                    textAlign: TextAlign.center,
                  ),
                  itemCount: contentList.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String content = "";
  List contentList = [];

  Future<void> loadSouraData(int index) async {
    content = await rootBundle.loadString('assets/quran/$index.txt');
    contentList = content.split("\n");
    setState(() {});
    print(contentList);
  }
}
