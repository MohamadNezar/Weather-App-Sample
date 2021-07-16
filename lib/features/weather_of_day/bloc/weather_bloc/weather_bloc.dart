import 'package:weather_app_task/core/bloc/base_bloc.dart';
import 'package:weather_app_task/core/constants.dart';
import 'package:weather_app_task/features/weather_of_day/data/models/headers/weather_header.dart';
import 'package:weather_app_task/features/weather_of_day/data/repositories/concrete_weather_info_repos.dart';
import 'package:weather_app_task/features/weather_of_day/domain/entities/weather_result.dart';


class WeatherCubit extends BaseCubit{
  final ConcreteWeatherInfoRepos weatherInfoRepos;

  WeatherCubit(this.weatherInfoRepos):super(Initial());

  void getWeather( )async{
    emit(Loading());
    final result = await weatherInfoRepos.getWeatherInfo(WeatherHeader(id: CITY_ID, appId: API_KEYS));
 if(result.hasErrorOnly){
  emit(Failed(error: result.error!,callback: ()=>this.getWeather()));
 }
 else{
 emit(Success(result.data!));
 }
  }
}

class Success extends BaseState{
  final WeatherResult data;

  Success(this.data);
}