// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainModel _$MainModelFromJson(Map<String, dynamic> json) {
  return MainModel(
    tempKf: (json['temp_kf'] as num?)?.toDouble(),
    grndLevel: json['grnd_level'] as int?,
    temp: (json['temp'] as num?)?.toDouble(),
    tempMax: (json['temp_max'] as num?)?.toDouble(),
    tempMin: (json['temp_min'] as num?)?.toDouble(),
    humidity: json['humidity'] as int?,
    pressure: json['pressure'] as int?,
    seaLevel: json['sea_level'] as int?,
    feelsLike: (json['feels_like'] as num?)?.toDouble(),
  );
}
