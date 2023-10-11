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
      builder: (context, provider, child) => StreamBuilder(
          stream: provider.assetsAudioPlayer.currentPosition,
          builder: (context, snapShot) {
            if (snapShot.hasData) {
              return ListView.builder(
                itemCount: provider.ChapterAudio.length,
                itemBuilder: (context, index) => Card(
                  color: Colors.brown,
                  child: ListTile(
                    title: Text(
                      provider.allchapter[index].name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    leading: CircleAvatar(
                      foregroundImage: NetworkImage(
                        provider.SlokImage[index],
                      ),
                    ),
                    onTap: () {
                      provider.changeIndex(index: index);
                      Navigator.of(context).pushNamed(
                        "audio_detail_page",
                        arguments: index,
                      );
                      print("44444444444444444444444444444444");
                      print(provider.allchapter[index].name);
                      print(index + 1);
                      print("44444444444444444444444444444444");
                    },
                  ),
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.green,
                ),
              );
            }
          }),
    );
  }
}
