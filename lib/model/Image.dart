class Album {
  final String price;
  final String name;
  final String renderedImageUrl;
  final double physicalWidth;
  final double physicalHeight;
  final String category;

  int quantity = 1;

  Album({
    required this.price,
    required this.name,
    required this.renderedImageUrl,
    required this.physicalWidth,
    required this.physicalHeight,
    required this.category,
  });
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      price:json['Price'],
      name: json['Name'],
      renderedImageUrl: json['RenderedImageUrl'],
      physicalWidth: json['PhysicalWidth'].toDouble(),
      physicalHeight: json['PhysicalHeight'].toDouble(),
      category: json['Category'],
    );
  }
}
