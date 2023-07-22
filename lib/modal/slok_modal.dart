// To parse this JSON data, do
//
//     final slokes = slokesFromJson(jsonString);

import 'dart:convert';

// List<Sloks> slokesFromJson(String str) =>
//     List<Sloks>.from(json.decode(str).map((x) => Sloks.fromJson(x)));
//
// String slokesToJson(List<Sloks> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Sloks {
  List<Chapter> chapter;

  Sloks({
    required this.chapter,
  });

  factory Sloks.fromJson(Map<String, dynamic> json) => Sloks(
        chapter:
            List<Chapter>.from(json["chapter"].map((x) => Chapter.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "chapter": List<dynamic>.from(chapter.map((x) => x.toJson())),
      };
}

class Chapter {
  int chapterId;
  int chapterNumber;
  int externalId;
  int id;
  String text;
  String title;
  int verseNumber;
  int verseOrder;
  String transliteration;
  String wordMeanings;

  Chapter({
    required this.chapterId,
    required this.chapterNumber,
    required this.externalId,
    required this.id,
    required this.text,
    required this.title,
    required this.verseNumber,
    required this.verseOrder,
    required this.transliteration,
    required this.wordMeanings,
  });

  factory Chapter.fromJson(Map<String, dynamic> json) => Chapter(
        chapterId: json["chapter_id"],
        chapterNumber: json["chapter_number"],
        externalId: json["externalId"],
        id: json["id"],
        text: json["text"],
        title: json["title"],
        verseNumber: json["verse_number"],
        verseOrder: json["verse_order"],
        transliteration: json["transliteration"],
        wordMeanings: json["word_meanings"],
      );

  Map<String, dynamic> toJson() => {
        "chapter_id": chapterId,
        "chapter_number": chapterNumber,
        "externalId": externalId,
        "id": id,
        "text": text,
        "title": title,
        "verse_number": verseNumber,
        "verse_order": verseOrder,
        "transliteration": transliteration,
        "word_meanings": wordMeanings,
      };
}
