import 'package:weather_app_task/core/result/result.dart';
import 'package:weather_app_task/features/weather_of_day/data/data_source/weather_info_remote_data_source.dart';
import 'package:weather_app_task/features/weather_of_day/data/models/headers/weather_header.dart';
import 'package:weather_app_task/features/weather_of_day/domain/entities/weather_result.dart';
import 'package:weather_app_task/features/weather_of_day/domain/repositories/weather_info_repos.dart';

class ConcreteWeatherInfoRepos extends WeatherInfoRepos{

  final WeatherInfoRemoteDataSource weatherInfoRemoteDataSource;

  ConcreteWeatherInfoRepos(this.weatherInfoRemoteDataSource);

  @override
  Future<Result<WeatherResult>> getWeatherInfo(WeatherHeader header) {
return weatherInfoRemoteDataSource.getWeatherInfo(header);
  }
}