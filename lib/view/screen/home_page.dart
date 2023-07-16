import 'package:bhagwat_gita1/components/ChaptersPage.dart';
import 'package:bhagwat_gita1/components/audio_page.dart';
import 'package:bhagwat_gita1/provider/GitaProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            actions: [
              Consumer<GitaProvider>(builder: (context, provider, child) {
                return CupertinoSwitch(
                  thumbColor: Colors.brown.shade400,
                  trackColor: Colors.white,
                  activeColor: Colors.brown.shade900,
                  value: provider.isDark,
                  onChanged: (val) => provider.changePlatform(val: val),
                );
              }),
            ],
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.brown,
            title: Consumer<GitaProvider>(builder: (context, provider, child) {
              return Text(
                widget.title,
                style: TextStyle(
                  color: provider.isDark ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              );
            }),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Consumer<GitaProvider>(
                  builder: (context, provider, child) {
                    return Icon(
                      Icons.book_rounded,
                      size: 30,
                      color: provider.isDark ? Colors.black : Colors.white,
                    );
                  },
                ),
                Consumer<GitaProvider>(
                  builder: (context, provider, child) {
                    return Icon(
                      Icons.music_note,
                      size: 30,
                      color: provider.isDark ? Colors.black : Colors.white,
                    );
                  },
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ChaptersPage(),
              SongPage(),
            ],
          )),
    );
  }
}
