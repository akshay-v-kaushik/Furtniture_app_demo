class Types {
  late final String? id, title, image;
  late final int? number;

  Types({this.id, this.title, this.image, this.number});

  factory Types.fromJson(Map<String, dynamic> json) {
    return Types(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        number: json["number"]);
  }
}

Types types = Types(
    id: "1",
    title: "Armchair",
    image:
        "https://www.google.com/search?client=opera-gx&q=chair+image&sourceid=opera&ie=UTF-8&oe=UTF-8#imgrc=71_IPD5tLjc2OM",
    number: 100);
