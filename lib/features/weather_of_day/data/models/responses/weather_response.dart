import 'package:weather_app_task/core/responses/api_response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app_task/features/weather_of_day/data/models/city_model.dart';
import 'package:weather_app_task/features/weather_of_day/data/models/info_model.dart';
import 'package:weather_app_task/features/weather_of_day/data/models/weather_result_model.dart';
part 'weather_response.g.dart';

@JsonSerializable(createToJson:false )
class WeatherResponse extends ApiResponse<WeatherResultModel>{
  final int? cnt;
  final List<InfoModel>? list;
  final  CityModel? city;

  WeatherResponse({ final dynamic cod,
  final dynamic message,
   this.city,this.cnt,this.list}):super(message: message,cod: cod,result:WeatherResultModel(list: list,cnt: cnt,city: city));

  factory WeatherResponse.fromJson(Map<String,dynamic>json)=>_$WeatherResponseFromJson(json);

}