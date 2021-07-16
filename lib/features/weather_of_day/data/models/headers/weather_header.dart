
import 'package:json_annotation/json_annotation.dart';

part 'weather_header.g.dart';
@JsonSerializable(createFactory: false )
class WeatherHeader{
  final int id;
  @JsonKey(name: 'appid')
  final String appId;

  WeatherHeader({required this.id,required this.appId});

  Map<String,dynamic> toJson()=>_$WeatherHeaderToJson(this);
}