class Authors {
  final int id;
  final String name;

  Authors({required this.id, required String this.name});

  factory Authors.fromMap({required Map auth}) {
    return Authors(id: auth["id"], name: auth["name"]);
  }
}
