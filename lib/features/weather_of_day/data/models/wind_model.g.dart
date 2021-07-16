// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WindModel _$WindModelFromJson(Map<String, dynamic> json) {
  return WindModel(
    speed: (json['speed'] as num?)?.toDouble(),
    deg: json['deg'] as int?,
    gust: (json['gust'] as num?)?.toDouble(),
  );
}
