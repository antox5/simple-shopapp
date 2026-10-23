class Item {
  String title;
  String img;
  bool inStock;
  int price;
  int qty;
  Item({
    required this.title,
    required this.img,
    required this.inStock,
    required this.price,
    required this.qty 

  });
factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      title: json['title'] ?? '',
      img: json['img'] ?? '',
      inStock: json['inStock'] ?? false,
      price: (json['price'] ?? 0).toDouble(),
      qty: json['qty'],
    );
  }
  int calcTotal() {
    return (price * qty);
  }
}