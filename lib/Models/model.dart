class Model {
  final int? price;
  final String? id, title, type, image, desc;

  Model({this.id, this.price, this.title, this.type, this.image, this.desc});

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      id: json["id"],
      title: json["title"],
      price: json["price"],
      type: json["type"],
      image: json["image"],
      desc: json["desc"],
    );
  }
}

Model product1 = Model(
    id: "1",
    price: 1599,
    title: "Malayan Wooden Frame",
    type: "Chair",
    image: "assets/images/img_1.png",
    desc: "loren ipsum sadjasdjma");
