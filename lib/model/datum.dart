class Datum {
  final String name;
  final int id;
  final String exchange;
  final double currentPrice;

  // Datum({
  //   required this.id,
  //   required this.name,
  //   required this.exchange,
  //   required this.currentPrice,
  // });

  Datum.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        exchange = json['exchange'],
        currentPrice = json['current_price'];
}
