
import 'package:weather_app_task/features/weather_of_day/domain/entities/weather_result.dart';

import 'city_model.dart';
import 'info_model.dart';
class   WeatherResultModel  extends WeatherResult{

  WeatherResultModel({  final int? cnt,
    final List<InfoModel>? list,
    final  CityModel? city }):super(city: city,cnt: cnt,list: list);

}