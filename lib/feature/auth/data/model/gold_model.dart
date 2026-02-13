class GoldModel {
  final String name;
  final String symbol;
  final num price;
  final String updatedAt;
  final String updatedAtReadable;

  GoldModel({
    required this.name,
    required this.symbol,
    required this.price,
    required this.updatedAt,
    required this.updatedAtReadable,
  });

  factory GoldModel.fromJson(Map<String, dynamic> json) {
    return GoldModel(
      name: json['name'],
      symbol: json['symbol'],
      price: json['price'],
      updatedAt: json['updatedAt'],
      updatedAtReadable: json['updatedAtReadable'],
    );
  }
}
