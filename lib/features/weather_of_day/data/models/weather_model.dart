import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app_task/features/weather_of_day/domain/entities/weather.dart';
part 'weather_model.g.dart';
@JsonSerializable(createToJson:false )

class WeatherModel extends Weather{


  WeatherModel({final  int? id,
  final String? main,
  final String? description,
  final String? icon,
  }):super(main: main,id: id,icon: icon,description: description);

  factory WeatherModel.fromJson(Map<String,dynamic>json)=>_$WeatherModelFromJson(json);

}