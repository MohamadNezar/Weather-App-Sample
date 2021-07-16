// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoModel _$InfoModelFromJson(Map<String, dynamic> json) {
  return InfoModel(
    main: json['main'] == null
        ? null
        : MainModel.fromJson(json['main'] as Map<String, dynamic>),
    weather: (json['weather'] as List<dynamic>?)
        ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    wind: json['wind'] == null
        ? null
        : WindModel.fromJson(json['wind'] as Map<String, dynamic>),
    pop: json['pop'],
    clouds: json['clouds'] == null
        ? null
        : CloudsModel.fromJson(json['clouds'] as Map<String, dynamic>),
    dt: json['dt'] as int?,
    dtTxt: json['dt_txt'] as String?,
    sys: json['sys'] == null
        ? null
        : SysModel.fromJson(json['sys'] as Map<String, dynamic>),
    visibility: json['visibility'] as int?,
  );
}
