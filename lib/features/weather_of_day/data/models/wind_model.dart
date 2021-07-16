import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app_task/features/weather_of_day/domain/entities/wind.dart';

part 'wind_model.g.dart';

@JsonSerializable(createToJson:false )
class WindModel extends Wind{

  WindModel({final  double? speed,
  final int? deg,
  final double? gust}):super(deg: deg,gust: gust,speed: speed);

factory WindModel.fromJson(Map<String,dynamic>json)=>_$WindModelFromJson(json);
}