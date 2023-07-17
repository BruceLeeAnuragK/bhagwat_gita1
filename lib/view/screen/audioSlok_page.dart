import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/AudioProvider.dart';

class Audio_Slok_Page extends StatefulWidget {
  const Audio_Slok_Page({Key? key}) : super(key: key);

  @override
  State<Audio_Slok_Page> createState() => _Audio_Slok_PageState();
}

class _Audio_Slok_PageState extends State<Audio_Slok_Page> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AudioProvider>(
      builder: (context, provider, child) => Scaffold(
        appBar: AppBar(
          actions: [
            provider.isDark
                ? Icon(
                    Icons.dark_mode_sharp,
                    size: 40,
                    color: Colors.black,
                  )
                : Icon(
                    Icons.sunny,
                    size: 40,
                    color: Colors.white,
                  ),
            SizedBox(
              width: 20,
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.brown,
          title: Text(
            "Audio Format",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: provider.isDark ? Colors.black : Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        body: StreamBuilder(
            stream: provider.currrentPosition,
            builder: (context, snapShot) {
              if (snapShot.hasData) {
                return ListView.builder(
                  itemCount: provider.SlokImage.length,
                  itemBuilder: (context, index) => Card(
                    color: Colors.brown,
                    child: ListTile(
                      title: Text(
                        "Chapter ${index + 1}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      leading: CircleAvatar(
                        foregroundImage:
                            NetworkImage(provider.SlokImage[index]),
                      ),
                      onTap: () {
                        provider.changeIndex(index: index);
                        Navigator.of(context).pushNamed(
                          "audio_detail_page",
                          arguments: index,
                        );
                      },
                    ),
                  ),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.brown,
                  ),
                );
              }
            }),
      ),
    );
  }
}
