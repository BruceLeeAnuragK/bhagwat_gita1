import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../modal/authors_modal.dart';
import '../modal/chapter_model.dart';
import '../modal/slok_modal.dart';

class GitaProvider extends ChangeNotifier {
  bool isDark = false;
  void changePlatform({required bool val}) {
    isDark = val;
    notifyListeners();
  }

  // changeIndex({required int index}) {
  //   loadJSONSLOK(index: index);
  //   notifyListeners();
  // }

  List<String> imageList = [
    "https://i.pinimg.com/564x/d4/58/10/d4581099199b060b11b0993c892a933e.jpg",
    "https://i.pinimg.com/564x/07/e9/2e/07e92ecffb6fc88e6f3ffe4258f56111.jpg",
    "https://i.pinimg.com/564x/23/21/d7/2321d72129bc1bfc5825f1dd5cb89dc0.jpg",
    "https://i.pinimg.com/564x/f5/e9/59/f5e959c36d63f8ae8964b796c5f2048b.jpg",
    "https://i.pinimg.com/564x/eb/74/2c/eb742cceaff44c559ad654ec0ce42a86.jpg",
    "https://i.pinimg.com/564x/71/53/d4/7153d4b1cc19bb66940c0760ce985621.jpg",
    "https://i.pinimg.com/564x/bd/87/85/bd8785d09bc401b142e7f936837a07ad.jpg",
    "https://i.pinimg.com/564x/07/95/dd/0795dd06bbd1d80e3b9d44029e2fcfb5.jpg",
  ];
  List<Chapters> allchapter = [];
  int currentIndex = 0;
  changeCurrentPageIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  GitaProvider() {
    loadJSON();
    loadJSONAUTH();
    loadJSONSLOK();
  }
  List<Sloks> AllSloks = [];
  loadJSONSLOK() async {
    String slok = await rootBundle.loadString("assets/json/slok.json");
    List allSloks = jsonDecode(slok);
    AllSloks = allSloks.map((e) => Sloks.fromMap(adh: e)).toList();
    // AllSloks = allSloks.map((index) => Sloks.fromMap(slok: index)).toList();
  }

  loadJSON() async {
    String res = await rootBundle.loadString("assets/json/chapter.json");
    List allData = jsonDecode(res);
    allchapter = allData.map((e) => Chapters.fromMap(data: e)).toList();
  }

  List<Authors> allAuthors = [];

  loadJSONAUTH() async {
    String aut = await rootBundle.loadString("assets/json/authors.json");
    List allAuth = jsonDecode(aut);
    allAuthors = allAuth.map((e) => Authors.fromMap(auth: e)).toList();
  }
}
