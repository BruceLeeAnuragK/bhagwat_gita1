import 'package:bhagwat_gita1/provider/GitaProvider.dart';
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
          title: Text("Chapter Name"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: provider.AllSloks.length,
          itemBuilder: (context, index) => Card(
            shadowColor: Colors.brown,
            child: ListTile(
              title: Text(
                  "${provider.AllSloks[index].chapter[indexData].verseNumber}"),
              leading: Text(
                  "Chapter ${provider.AllSloks[indexData].chapter[indexData].id}"),
            ),
          ),
        ),
      );
    });
  }
}
