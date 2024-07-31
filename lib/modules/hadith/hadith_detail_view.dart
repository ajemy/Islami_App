import 'package:flutter/material.dart';
import 'package:islamy/modules/hadith/hadith_view.dart';

class HadithDetailView extends StatefulWidget {
  static String hadithDetailViewRoute ="hadithView";
  const HadithDetailView({super.key});

  @override
  State<HadithDetailView> createState() => _HadithDetailViewState();
}

class _HadithDetailViewState extends State<HadithDetailView> {

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    HadithDetail hadithDetail = ModalRoute.of(context)?.settings.arguments as HadithDetail;
    return  Container(
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
                      hadithDetail.hadithTitle,
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
              Expanded(
                child: ListView(
                  children: [
                    Text(hadithDetail.hadithBody,textAlign: TextAlign.center,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );;
  }
}
