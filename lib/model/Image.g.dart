// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Album _$AlbumFromJson(Map<String, dynamic> json) => Album(
      Price: json['Price'] as String,
      Name: json['Name'] as String,
      RenderedImageUrl: json['RenderedImageUrl'] as String,
      PhysicalWidth: (json['PhysicalWidth'] as num).toDouble(),
      PhysicalHeight: (json['PhysicalHeight'] as num).toDouble(),
      Category: json['Category'] as String,
    );

Map<String, dynamic> _$AlbumToJson(Album instance) => <String, dynamic>{
      'Price': instance.Price,
      'Name': instance.Name,
      'RenderedImageUrl': instance.RenderedImageUrl,
      'PhysicalWidth': instance.PhysicalWidth,
      'PhysicalHeight': instance.PhysicalHeight,
      'Category': instance.Category,
      
    };
