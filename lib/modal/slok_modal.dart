class Sloks {
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

  Sloks({
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

  factory Sloks.fromMap({required Map slok}) {
    return Sloks(
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
