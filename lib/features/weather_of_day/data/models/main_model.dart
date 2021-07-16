
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app_task/features/weather_of_day/domain/entities/main.dart';

part 'main_model.g.dart';
@JsonSerializable(createToJson:false )

class MainModel extends Main{
  final double? temp;
  @JsonKey(name: 'feels_like')
  final  double? feelsLike;
  @JsonKey(name: 'temp_min')
  final double? tempMin;
  @JsonKey(name: 'temp_max')
  final double? tempMax;
  final int? pressure;
  @JsonKey(name: 'sea_level')
  final int? seaLevel;
  @JsonKey(name: 'grnd_level')
  final int? grndLevel;
  final int? humidity;
  @JsonKey(name: 'temp_kf')
  final double? tempKf;
  MainModel(
      {this.tempKf,this.grndLevel,this.temp,this.tempMax,this.tempMin,this.humidity,this.pressure,this.seaLevel,this.feelsLike
      }):super(feelsLike: feelsLike,grndLevel: grndLevel,humidity: humidity,pressure: pressure,seaLevel: seaLevel,temp: temp,tempKf: tempKf,tempMax: tempMax,tempMin: tempMin);

factory MainModel.fromJson(Map<String,dynamic>json)=>_$MainModelFromJson(json);

}