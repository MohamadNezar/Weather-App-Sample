

import 'package:weather_app_task/features/weather_of_day/domain/entities/city.dart';

import 'coord_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'city_model.g.dart';
@JsonSerializable(createToJson:false )
class CityModel extends City{

  CityModel(
      {final int? id,
      final String? name,
      final CoordModel? coord,
      final String? country,
      final int? population,
      final int? timezone,
      final int? sunrise,
      final int? sunset}):super(id: id,name: name,coord: coord,country: country,population: population,sunrise: sunrise,sunset: sunset,timezone: timezone);

  factory CityModel.fromJson(Map<String,dynamic> json)=>_$CityModelFromJson(json);
}