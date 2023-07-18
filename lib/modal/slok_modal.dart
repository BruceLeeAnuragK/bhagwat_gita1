class Sloks {
  final List<Adhyay> adhyay;
  Sloks({required this.adhyay});
  factory Sloks.fromMap({required Map<String, dynamic> adh}) {
    return Sloks(
      adhyay: adh["adhyay"],
    );
  }
}

class Adhyay {
  final int chapter_id;
  final int chapter_number;
  final int externalId;
  final int id;
  final String text;
  final String title;
  final int verse_number;
  final int verse_order;
  final String transliteration;
  final String word_meaning;

  Adhyay({
    required this.chapter_id,
    required this.chapter_number,
    required this.externalId,
    required this.id,
    required this.text,
    required this.title,
    required this.verse_number,
    required this.verse_order,
    required this.transliteration,
    required this.word_meaning,
  });

  factory Adhyay.fromMap({required Map<String, dynamic> slok}) {
    return Adhyay(
        chapter_id: slok["chapter_id"],
        chapter_number: slok["chapter_number"],
        externalId: slok["externalId"],
        id: slok["id"],
        text: slok["text"],
        title: slok["title"],
        verse_number: slok["verse_number"],
        verse_order: slok["verse_order"],
        transliteration: slok["transliteration"],
        word_meaning: slok["word_meaning"]);
  }
}
