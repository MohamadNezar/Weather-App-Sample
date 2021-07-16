
import 'package:weather_app_task/core/constants.dart';
import 'package:weather_app_task/core/datasources/remote_data_source.dart';
import 'package:weather_app_task/core/result/result.dart';
import 'package:weather_app_task/features/weather_of_day/data/models/headers/weather_header.dart';
import 'package:weather_app_task/features/weather_of_day/data/models/responses/weather_response.dart';
import 'package:weather_app_task/features/weather_of_day/data/models/weather_result_model.dart';

abstract class WeatherInfoRemoteDataSource extends RemoteDataSource{
  Future<Result<WeatherResultModel>> getWeatherInfo(WeatherHeader header);
}


class ConcreteWeatherInfoRemoteDataSource extends WeatherInfoRemoteDataSource{

@override
Future<Result<WeatherResultModel>> getWeatherInfo(WeatherHeader header){
return callApi(responseStr: 'WeatherResponse', converter: (json)=>WeatherResponse.fromJson(json), method: HttpMethod.GET, url: BASE_URL,queryParameters: header.toJson());
}

}