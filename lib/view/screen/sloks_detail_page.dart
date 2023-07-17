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
              title: Text("${provider.AllSloks[index].verse_order}"),
              leading: Text("${provider.AllSloks[index].id}"),
            ),
          ),
        ),
      );
    });
  }
}
