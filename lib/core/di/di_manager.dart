
import 'package:get_it/get_it.dart';
import 'package:weather_app_task/core/navigator/app_navigator.dart';
import 'package:weather_app_task/features/weather_of_day/data/data_source/weather_info_remote_data_source.dart';
import 'package:weather_app_task/features/weather_of_day/data/repositories/concrete_weather_info_repos.dart';
final getIt = GetIt.instance;

class DI{

static void init (){
//data sources
getIt.registerLazySingleton(() =>ConcreteWeatherInfoRemoteDataSource());

//repositories
getIt.registerLazySingleton(() => ConcreteWeatherInfoRepos(getIt<ConcreteWeatherInfoRemoteDataSource>()));

//naivgator
getIt.registerLazySingleton(()=>AppNavigator());

}

}