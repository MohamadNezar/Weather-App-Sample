
import 'package:weather_app_task/core/result/result.dart';
import 'package:weather_app_task/features/weather_of_day/data/models/headers/weather_header.dart';
import 'package:weather_app_task/features/weather_of_day/domain/entities/weather_result.dart';

abstract class WeatherInfoRepos {
  Future<Result<WeatherResult>> getWeatherInfo(WeatherHeader header);
}