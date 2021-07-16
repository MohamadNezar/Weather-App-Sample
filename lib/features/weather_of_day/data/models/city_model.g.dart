// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityModel _$CityModelFromJson(Map<String, dynamic> json) {
  return CityModel(
    id: json['id'] as int?,
    name: json['name'] as String?,
    coord: json['coord'] == null
        ? null
        : CoordModel.fromJson(json['coord'] as Map<String, dynamic>),
    country: json['country'] as String?,
    population: json['population'] as int?,
    timezone: json['timezone'] as int?,
    sunrise: json['sunrise'] as int?,
    sunset: json['sunset'] as int?,
  );
}
