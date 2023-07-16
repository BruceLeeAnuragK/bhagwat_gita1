import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/AudioProvider.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
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
                  itemCount: provider.Chapter1Audio.length,
                  itemBuilder: (context, index) => Card(
                    color: Colors.brown,
                    child: ListTile(
                      title: Text(
                        "Slok ${index + 1}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      leading: CircleAvatar(
                        foregroundImage:
                            NetworkImage(provider.AudioImage[index]),
                      ),
                      onTap: () {
                        provider.changeIndex(index: index);
                        Navigator.of(context).pushNamed(
                          "audio_detail_page",
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
