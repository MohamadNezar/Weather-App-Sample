import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_task/core/bloc/base_bloc.dart';
import 'package:weather_app_task/core/di/di_manager.dart';
import 'package:weather_app_task/core/ui/widgets/general_error_widget.dart';
import 'package:weather_app_task/core/ui/widgets/home_page_background.dart';
import 'package:weather_app_task/features/weather_of_day/ui/widgets/home_page_weather_info.dart';
import 'package:weather_app_task/features/weather_of_day/bloc/weather_bloc/weather_bloc.dart';
import 'package:weather_app_task/features/weather_of_day/data/repositories/concrete_weather_info_repos.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final cubit = WeatherCubit(getIt<ConcreteWeatherInfoRepos>());
  @override
  void initState() {
    cubit.getWeather();
    super.initState();
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
          HomePageBackground(),
          BlocBuilder(
            bloc: cubit,
            builder: (context, state) {
              if (state is Success) {
                return HomePageWeatherInfo(state.data.list!);
              } else if (state is Failed) {
                return Align(
                  alignment: Alignment.bottomCenter,
                  child: GeneralErrorWidget(
                    error: state.error,
                    callback: state.callback,
                  ),
                );
              } else if (state is Loading) {
                return Center(child: CircularProgressIndicator(color: Colors.white,));
              } else {
                return Container();
              }
            },
          ),
        ]),
    );
  }
}
