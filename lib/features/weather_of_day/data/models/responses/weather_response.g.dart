// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return WeatherResponse(
    cod: json['cod'],
    message: json['message'],
    city: json['city'] == null
        ? null
        : CityModel.fromJson(json['city'] as Map<String, dynamic>),
    cnt: json['cnt'] as int?,
    list: (json['list'] as List<dynamic>?)
        ?.map((e) => InfoModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}
