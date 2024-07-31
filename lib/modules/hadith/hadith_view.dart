import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/modules/hadith/hadith_detail_view.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  @override
  Widget build(BuildContext context) {
    if (hadithData.isEmpty) getHadithData();
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset(
          "assets/images/hadith.png",
          height: 219,
          width: 312,
        ),
        const Divider(),
        Text(
          "الأحاديث",
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyLarge,
        ),
        const Divider(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  HadithDetailView.hadithDetailViewRoute,
                  arguments: HadithDetail(
                      hadithTitle: hadithData[index].hadithTitle,
                      hadithBody: hadithData[index].hadithBody),
                );
              },
              child: Text(
                hadithData[index].hadithTitle,
                style: theme.textTheme.bodyMedium?.copyWith(height: 2),
                textAlign: TextAlign.center,
              ),
            ),
            itemCount: hadithData.length,
          ),
        )
      ],
    );
  }

  List<HadithDetail> hadithData = [];

  Future<void> getHadithData() async {
    String content = await rootBundle.loadString("assets/hadith/ahadeth.txt");
    List<String> hadithList = content.split("#");

    for (int i = 0; i < hadithList.length; i++) {
      String singleHadith = hadithList[i].trim();

      int indexOfTitle = singleHadith.indexOf("\n");

      if(indexOfTitle>0) {
        String title = singleHadith.substring(0,indexOfTitle);
      String body = singleHadith.substring(indexOfTitle + 1);

      HadithDetail hadithDetail =
          HadithDetail(hadithTitle: title, hadithBody: body);

      hadithData.add(hadithDetail);}
    }
    print("load build");
    setState(() {});
  }
}

class HadithDetail {
  String hadithTitle;
  String hadithBody;

  HadithDetail({required this.hadithTitle, required this.hadithBody});
}
