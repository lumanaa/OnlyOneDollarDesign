import 'package:json_annotation/json_annotation.dart';

part 'Image.g.dart';

@JsonSerializable(explicitToJson: true)
class Album {
  final String Price;
  final String Name;
  final String RenderedImageUrl;
  final double PhysicalWidth;
  final double PhysicalHeight;
  final String Category;

  int quantity = 1;
  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

  Album(
      {required this.Price,
      required this.Name,
      required this.RenderedImageUrl,
      required this.PhysicalWidth,
      required this.PhysicalHeight,
      required this.Category});

  Map<String, dynamic> toJson() => _$AlbumToJson(this);
}
