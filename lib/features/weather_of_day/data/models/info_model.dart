
import 'package:weather_app_task/features/weather_of_day/domain/entities/info.dart';

import 'clouds_model.dart';
import 'main_model.dart';
import 'sys_model.dart';
import 'weather_model.dart';
import 'wind_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'info_model.g.dart';
@JsonSerializable(createToJson:false )

class InfoModel extends Info{
    int? dt;
    MainModel? main;
    List<WeatherModel>? weather;
    CloudsModel? clouds;
    WindModel? wind;
    int? visibility;
    dynamic pop;
    SysModel? sys;
    @JsonKey(name: 'dt_txt')
    String? dtTxt;

  InfoModel(
    {this.main,this.weather,this.wind,this.pop,this.clouds,this.dt,this.dtTxt,this.sys,this.visibility}):super(clouds: clouds,dt: dt,dtTxt: dtTxt,main: main,pop: pop,sys: sys,visibility:visibility,weather: weather,wind: wind );

factory InfoModel.fromJson(Map<String,dynamic>json)=>_$InfoModelFromJson(json);

}