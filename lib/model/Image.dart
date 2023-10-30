class Album {
  final String name;
  final String renderedImageUrl;
  final double silkPercent;
  final double physicalWidth;
  final double physicalHeight;

  Album({
    required this.name,
    required this.renderedImageUrl,
    required this.silkPercent,
    required this.physicalWidth,
    required this.physicalHeight,
  });
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      name: json['Name'],
      renderedImageUrl: json['RenderedImageUrl'],
      silkPercent: json['SilkPercent'].toDouble(),
      physicalWidth: json['PhysicalWidth'].toDouble(),
      physicalHeight: json['PhysicalHeight'].toDouble(),
    );
  }
}
