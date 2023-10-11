import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/AudioProvider.dart';

class AudioDetailPage extends StatefulWidget {
  const AudioDetailPage({Key? key}) : super(key: key);

  @override
  State<AudioDetailPage> createState() => _AudioDetailPageState();
}

class _AudioDetailPageState extends State<AudioDetailPage>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
  }

  @override
  Widget build(BuildContext context) {
    int Audioindex = ModalRoute.of(context)!.settings.arguments as int;
    return Consumer<AudioProvider>(
      builder: (context, provider, child) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown,
            leading: IconButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: provider.isDark ? Colors.black : Colors.white,
              ),
            ),
            centerTitle: true,
            title: Text(
              "The Audio Player",
              style: TextStyle(
                fontSize: 20,
                color: provider.isDark ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 250,
                    width: 250,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image:
                            NetworkImage("${provider.AudioImage[Audioindex]}"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                StreamBuilder(
                  stream: provider.assetsAudioPlayer.currentPosition,
                  builder: (context, AsyncSnapshot<Duration> snapShot) {
                    if (snapShot.hasData) {
                      double currentPosition =
                          snapShot.data!.inSeconds.toDouble();
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Slider(
                              activeColor: Colors.brown,
                              min: 0,
                              max: provider.totalDuration.inSeconds.toDouble(),
                              value: currentPosition,
                              onChanged: (val) {
                                provider.seek(seconds: val.toInt());
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "${snapShot.data!.inMinutes}:${(snapShot.data!.inSeconds) % 60}",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "${provider.totalDuration.inMinutes} :${(provider.totalDuration.inSeconds) % 60}",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      provider.skip(seconds: -10);
                                    },
                                    icon: const Icon(
                                      Icons.skip_previous,
                                      color: Colors.brown,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: StreamBuilder(
                                    stream:
                                        provider.assetsAudioPlayer.isPlaying,
                                    builder: (context,
                                        AsyncSnapshot<bool> snapShot) {
                                      // snapShot.data!
                                      //     ? animationController.forward()
                                      //     : animationController.reverse();

                                      return IconButton(
                                        onPressed: () {
                                          if (snapShot.data!) {
                                            provider.pause();
                                            animationController.reverse();
                                            setState(() {});
                                          } else {
                                            provider.play();
                                            animationController.forward();
                                            setState(() {});
                                          }
                                        },
                                        icon: AnimatedIcon(
                                          color: Colors.brown,
                                          icon: AnimatedIcons.play_pause,
                                          progress: animationController,
                                          size: 30,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      provider.skip(seconds: 10);
                                    },
                                    icon: const Icon(
                                      Icons.skip_next,
                                      size: 30,
                                      color: Colors.brown,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              height: 3,
                            ),
                          ],
                        ),
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
                Container(
                  height: 500,
                  child: ListView.builder(
                    itemCount: provider.SlokImage.length,
                    itemBuilder: (context, index) => Card(
                      color: Colors.brown,
                      child: ListTile(
                        title: Text(
                          "श्लोक ${index + 1}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        leading: CircleAvatar(
                          foregroundImage: NetworkImage(
                            provider.SlokImage[index],
                          ),
                        ),
                        onTap: () {
                          provider.changeIndex(index: Audioindex);
                          Navigator.of(context).pushNamed(
                            "audio_detail_page",
                            arguments: index,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
