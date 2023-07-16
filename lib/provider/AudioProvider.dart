import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class AudioProvider extends ChangeNotifier {
  bool isDark = false;

  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
  Duration totalDuration = Duration.zero;
  List Chapter1Audio = [
    "assets/audio/1/1_1.mp3",
    "assets/audio/1/1_2.mp3",
    "assets/audio/1/1_3.mp3",
    "assets/audio/1/1_4.mp3",
    "assets/audio/1/1_5.mp3",
    "assets/audio/1/1_6.mp3",
    "assets/audio/1/1_7.mp3",
    "assets/audio/1/1_8.mp3",
    "assets/audio/1/1_9.mp3",
    "assets/audio/1/1_10.mp3",
    "assets/audio/1/1_11.mp3",
    "assets/audio/1/1_12.mp3",
    "assets/audio/1/1_13.mp3",
    "assets/audio/1/1_14.mp3",
    "assets/audio/1/1_15.mp3",
    "assets/audio/1/1_16.mp3",
    "assets/audio/1/1_17.mp3",
    "assets/audio/1/1_18.mp3",
    "assets/audio/1/1_19.mp3",
    "assets/audio/1/1_20.mp3",
    "assets/audio/1/1_21.mp3",
    "assets/audio/1/1_22.mp3",
    "assets/audio/1/1_23.mp3",
    "assets/audio/1/1_24.mp3",
    "assets/audio/1/1_25.mp3",
    "assets/audio/1/1_26.mp3",
    "assets/audio/1/1_27.mp3",
    "assets/audio/1/1_28.mp3",
    "assets/audio/1/1_29.mp3",
    "assets/audio/1/1_30.mp3",
    "assets/audio/1/1_31.mp3",
    "assets/audio/1/1_32.mp3",
    "assets/audio/1/1_33.mp3",
    "assets/audio/1/1_34.mp3",
    "assets/audio/1/1_35.mp3",
    "assets/audio/1/1_36.mp3",
    "assets/audio/1/1_37.mp3",
    "assets/audio/1/1_38.mp3",
    "assets/audio/1/1_39.mp3",
    "assets/audio/1/1_40.mp3",
    "assets/audio/1/1_41.mp3",
    "assets/audio/1/1_42.mp3",
    "assets/audio/1/1_43.mp3",
    "assets/audio/1/1_44.mp3",
    "assets/audio/1/1_45.mp3",
    "assets/audio/1/1_46.mp3",
  ];
  List Chapter2Audio = [
    "assets/audio/2/1.mp3",
    "assets/audio/2/2.mp3",
    "assets/audio/2/3.mp3",
    "assets/audio/2/4.mp3",
    "assets/audio/2/5.mp3",
    "assets/audio/2/6.mp3",
    "assets/audio/2/7.mp3",
    "assets/audio/2/8.mp3",
    "assets/audio/2/9.mp3",
    "assets/audio/2/10.mp3",
    "assets/audio/2/11.mp3",
    "assets/audio/2/12.mp3",
    "assets/audio/2/13.mp3",
    "assets/audio/2/14.mp3",
    "assets/audio/2/15.mp3",
    "assets/audio/2/16.mp3",
    "assets/audio/2/17.mp3",
    "assets/audio/2/18.mp3",
    "assets/audio/2/19.mp3",
    "assets/audio/2/20.mp3",
    "assets/audio/2/21.mp3",
    "assets/audio/2/22.mp3",
    "assets/audio/2/23.mp3",
    "assets/audio/2/24.mp3",
    "assets/audio/2/25.mp3",
    "assets/audio/2/26.mp3",
    "assets/audio/2/27.mp3",
    "assets/audio/2/28.mp3",
    "assets/audio/2/29.mp3",
    "assets/audio/2/30.mp3",
    "assets/audio/2/31.mp3",
    "assets/audio/2/32.mp3",
    "assets/audio/2/33.mp3",
    "assets/audio/2/34.mp3",
    "assets/audio/2/35.mp3",
    "assets/audio/2/36.mp3",
    "assets/audio/2/37.mp3",
    "assets/audio/2/38.mp3",
    "assets/audio/2/39.mp3",
    "assets/audio/2/40.mp3",
    "assets/audio/2/41.mp3",
    "assets/audio/2/42.mp3",
    "assets/audio/2/43.mp3",
    "assets/audio/2/44.mp3",
    "assets/audio/2/45.mp3",
    "assets/audio/2/46.mp3",
    "assets/audio/2/47.mp3",
    "assets/audio/2/48.mp3",
    "assets/audio/2/49.mp3",
    "assets/audio/2/50.mp3",
    "assets/audio/2/51.mp3",
    "assets/audio/2/52.mp3",
    "assets/audio/2/53.mp3",
    "assets/audio/2/54.mp3",
    "assets/audio/2/55.mp3",
    "assets/audio/2/56.mp3",
    "assets/audio/2/57.mp3",
    "assets/audio/2/58.mp3",
    "assets/audio/2/59.mp3",
    "assets/audio/2/60.mp3",
    "assets/audio/2/61.mp3",
    "assets/audio/2/62.mp3",
    "assets/audio/2/63.mp3",
    "assets/audio/2/64.mp3",
    "assets/audio/2/65.mp3",
    "assets/audio/2/66.mp3",
    "assets/audio/2/67.mp3",
    "assets/audio/2/68.mp3",
    "assets/audio/2/69.mp3",
    "assets/audio/2/70.mp3",
    "assets/audio/2/71.mp3",
    "assets/audio/2/72.mp3",
  ];
  List AudioImage = [
    "https://i.pinimg.com/564x/d4/58/10/d4581099199b060b11b0993c892a933e.jpg",
    "https://i.pinimg.com/564x/07/e9/2e/07e92ecffb6fc88e6f3ffe4258f56111.jpg",
    "https://i.pinimg.com/564x/23/21/d7/2321d72129bc1bfc5825f1dd5cb89dc0.jpg",
    "https://i.pinimg.com/564x/f5/e9/59/f5e959c36d63f8ae8964b796c5f2048b.jpg",
    "https://i.pinimg.com/564x/eb/74/2c/eb742cceaff44c559ad654ec0ce42a86.jpg",
    "https://i.pinimg.com/564x/71/53/d4/7153d4b1cc19bb66940c0760ce985621.jpg",
    "https://i.pinimg.com/564x/bd/87/85/bd8785d09bc401b142e7f936837a07ad.jpg",
    "https://i.pinimg.com/564x/07/95/dd/0795dd06bbd1d80e3b9d44029e2fcfb5.jpg",
    "https://i.pinimg.com/236x/3d/f4/97/3df497423335b95c27bfda7b1f75b32b.jpg",
    "https://i.pinimg.com/564x/20/5d/dc/205ddc2f8ea14b4782468250659cd812.jpg",
    "https://i.pinimg.com/236x/b6/13/8e/b6138eff8cb6d61c97017ec9820490f1.jpg",
    "https://i.pinimg.com/236x/c3/84/61/c384616faedd5c4b343df818dd8a66db.jpg",
    "https://i.pinimg.com/564x/a3/90/34/a3903478047f78a6ca7d63683617cf2f.jpg",
    "https://i.pinimg.com/736x/a6/f3/b3/a6f3b3241428a51337b0c8aee8716642.jpg",
    "https://i.pinimg.com/564x/cc/d8/0d/ccd80d0f1d8067ed0e47c6535c5afa37.jpg",
    "https://i.pinimg.com/236x/77/e3/c3/77e3c300258ebd95d681ca6f33f34dc2.jpg",
    "https://i.pinimg.com/236x/60/17/a2/6017a2718899664ff5d1129e2b1e1022.jpg",
    "https://i.pinimg.com/564x/d4/58/10/d4581099199b060b11b0993c892a933e.jpg",
    "https://i.pinimg.com/564x/07/e9/2e/07e92ecffb6fc88e6f3ffe4258f56111.jpg",
    "https://i.pinimg.com/564x/23/21/d7/2321d72129bc1bfc5825f1dd5cb89dc0.jpg",
    "https://i.pinimg.com/564x/f5/e9/59/f5e959c36d63f8ae8964b796c5f2048b.jpg",
    "https://i.pinimg.com/564x/eb/74/2c/eb742cceaff44c559ad654ec0ce42a86.jpg",
    "https://i.pinimg.com/564x/71/53/d4/7153d4b1cc19bb66940c0760ce985621.jpg",
    "https://i.pinimg.com/564x/bd/87/85/bd8785d09bc401b142e7f936837a07ad.jpg",
    "https://i.pinimg.com/564x/07/95/dd/0795dd06bbd1d80e3b9d44029e2fcfb5.jpg",
    "https://i.pinimg.com/236x/3d/f4/97/3df497423335b95c27bfda7b1f75b32b.jpg",
    "https://i.pinimg.com/564x/20/5d/dc/205ddc2f8ea14b4782468250659cd812.jpg",
    "https://i.pinimg.com/236x/b6/13/8e/b6138eff8cb6d61c97017ec9820490f1.jpg",
    "https://i.pinimg.com/236x/c3/84/61/c384616faedd5c4b343df818dd8a66db.jpg",
    "https://i.pinimg.com/564x/a3/90/34/a3903478047f78a6ca7d63683617cf2f.jpg",
    "https://i.pinimg.com/736x/a6/f3/b3/a6f3b3241428a51337b0c8aee8716642.jpg",
    "https://i.pinimg.com/564x/cc/d8/0d/ccd80d0f1d8067ed0e47c6535c5afa37.jpg",
    "https://i.pinimg.com/236x/77/e3/c3/77e3c300258ebd95d681ca6f33f34dc2.jpg",
    "https://i.pinimg.com/236x/60/17/a2/6017a2718899664ff5d1129e2b1e1022.jpg",
    "https://i.pinimg.com/564x/d4/58/10/d4581099199b060b11b0993c892a933e.jpg",
    "https://i.pinimg.com/564x/07/e9/2e/07e92ecffb6fc88e6f3ffe4258f56111.jpg",
    "https://i.pinimg.com/564x/23/21/d7/2321d72129bc1bfc5825f1dd5cb89dc0.jpg",
    "https://i.pinimg.com/564x/f5/e9/59/f5e959c36d63f8ae8964b796c5f2048b.jpg",
    "https://i.pinimg.com/564x/eb/74/2c/eb742cceaff44c559ad654ec0ce42a86.jpg",
    "https://i.pinimg.com/564x/71/53/d4/7153d4b1cc19bb66940c0760ce985621.jpg",
    "https://i.pinimg.com/564x/bd/87/85/bd8785d09bc401b142e7f936837a07ad.jpg",
    "https://i.pinimg.com/564x/07/95/dd/0795dd06bbd1d80e3b9d44029e2fcfb5.jpg",
    "https://i.pinimg.com/236x/3d/f4/97/3df497423335b95c27bfda7b1f75b32b.jpg",
    "https://i.pinimg.com/564x/20/5d/dc/205ddc2f8ea14b4782468250659cd812.jpg",
    "https://i.pinimg.com/236x/b6/13/8e/b6138eff8cb6d61c97017ec9820490f1.jpg",
    "https://i.pinimg.com/236x/c3/84/61/c384616faedd5c4b343df818dd8a66db.jpg",
    "https://i.pinimg.com/564x/a3/90/34/a3903478047f78a6ca7d63683617cf2f.jpg",
    "https://i.pinimg.com/736x/a6/f3/b3/a6f3b3241428a51337b0c8aee8716642.jpg",
    "https://i.pinimg.com/564x/cc/d8/0d/ccd80d0f1d8067ed0e47c6535c5afa37.jpg",
    "https://i.pinimg.com/236x/77/e3/c3/77e3c300258ebd95d681ca6f33f34dc2.jpg",
    "https://i.pinimg.com/236x/60/17/a2/6017a2718899664ff5d1129e2b1e1022.jpg",
    "https://i.pinimg.com/736x/a6/f3/b3/a6f3b3241428a51337b0c8aee8716642.jpg",
  ];
  List Audios = [
    "assets/audio/Baarishon_Ki_Dhun.mp3",
    "assets/audio/Teraa_Meraa_Rishta.mp3",
    "assets/audio/Jabb_Se_Tumko_Dekhaa.mp3",
    "assets/audio/Pehli_Pehli_Baar.mp3",
    "assets/audio/Baarish_Karde.mp3",
    "assets/audio/Sach_Bata_Mujhe.mp3",
    "assets/audio/Krishna_Teri_Ho_Gyi.mp3",
    "assets/audio/Tere_Bin_Nihal.mp3",
    "assets/audio/Mohabbat.mp3",
    "assets/audio/Pehli_Baarish_Mein.mp3",
    "assets/audio/Dil_Ko_Sukoon.mp3",
    "assets/audio/Tu_Meraa_Raja.mp3",
  ];
  List AudioName = [
    "Barrishon_Ki_Dhun.mp3",
    "Teraa_Meraa_Rishta.mp3",
    "Jabb_Se_Tumko_Dekhaa.mp3",
    "Pehli_Pehli_Baar.mp3",
    "Baarish_Karde.mp3",
    "Sach_Bata_Mujhe.mp3",
    "Krishna_Teri_Ho_Gyi.mp3",
    "Tere_Bin_Nihal.mp3",
    "Mohabbat.mp3",
    "Pehli_Baarish_Mein.mp3",
    "Dil_Ko_Sukoon.mp3",
    "Tu_Meraa_Raja.mp3",
  ];
  void changePlatform({required bool val}) {
    isDark = val;
    notifyListeners();
  }

  changeIndex({required int index}) {
    assetsAudioPlayer.pause();
    notifyListeners();
    init(index: index);
  }

  AudioProvider() {
    init(index: 0);
  }

  init({required int index}) {
    assetsAudioPlayer
        .open(Audio(Chapter1Audio[index]),
            autoStart: false, showNotification: true)
        .then((value) {
      totalDuration = assetsAudioPlayer.current.value!.audio.duration;
      print("DONE>>>>>>>>>>>>>>>>>>>>>>>>>");
    });
  }

  play() async {
    await assetsAudioPlayer.play();
    notifyListeners();
  }

  pause() async {
    await assetsAudioPlayer.pause();
    notifyListeners();
  }

  seek({required int seconds}) async {
    await assetsAudioPlayer.seek(Duration(seconds: seconds));
    notifyListeners();
  }

  skip({required int seconds}) async {
    await assetsAudioPlayer.seekBy(Duration(seconds: seconds));
    notifyListeners();
  }

  get isPlaying {
    return assetsAudioPlayer.isPlaying.value;
  }

  get currrentPosition {
    return assetsAudioPlayer.currentPosition;
  }
}
