import 'package:bhagwat_gita1/provider/GitaProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SlokDetailPage extends StatefulWidget {
  const SlokDetailPage({Key? key}) : super(key: key);

  @override
  State<SlokDetailPage> createState() => _SlokDetailPageState();
}

class _SlokDetailPageState extends State<SlokDetailPage> {
  @override
  Widget build(BuildContext context) {
    int indexData = ModalRoute.of(context)!.settings.arguments as int;
    return Consumer<GitaProvider>(builder: (context, provider, child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: provider.isEnglish
              ? Text(
                  " Chapter: ${provider.AllSloks[indexData].chapter[indexData].chapterId} ${provider.allchapter[indexData].name_meaning}",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )
              : Text(
                  " आध्याय: ${provider.AllSloks[indexData].chapter[indexData].chapterId} ${provider.allchapter[indexData].name} ",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
          actions: [
            CupertinoSwitch(
              thumbColor: Colors.brown.shade400,
              trackColor: Colors.white,
              activeColor: Colors.brown.shade900,
              value: provider.isEnglish,
              onChanged: (val) => provider.changeLanguage(val: val),
            ),
            provider.isEnglish
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.church,
                      size: 30,
                      color: Colors.white,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.temple_hindu,
                      size: 30,
                      color: Colors.white,
                    ),
                  )
          ],
        ),
        body: ListView.builder(
          itemCount: provider.AllSloks.length,
          itemBuilder: (context, index) => Card(
            shadowColor: Colors.brown,
            child: ListTile(
              title: provider.isEnglish
                  ? Text(
                      "${provider.AllSloks[indexData].chapter[index].wordMeanings}")
                  : Text("${provider.AllSloks[indexData].chapter[index].text}"),
              leading: provider.isEnglish
                  ? Text(
                      "Shlok ${provider.AllSloks[indexData].chapter[index].verseNumber}")
                  : Text(
                      "श्लोक ${provider.AllSloks[indexData].chapter[index].verseNumber}"),
            ),
          ),
        ),
      );
    });
  }
}
