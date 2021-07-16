import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_task/core/resources.dart';
import 'package:weather_app_task/core/ui/widgets/home_page_background.dart';
import 'package:weather_app_task/features/weather_of_day/domain/entities/info.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_task/features/weather_of_day/ui/widgets/weather_details_card.dart';

class WeatherDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as List<Info>;
    var weatherDetails = data.length == 8 ? data[4] : data[0];
    return Scaffold(
      body: Stack(
        children: [
          HomePageBackground(),
          SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 0.01.sh),
                child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    weatherDetails.weather?.first.description??'',
                    style: AppStyles.kMainTitle.copyWith(fontSize: 125.sp),
                  ),
                ),
                Image.asset(
                  AppIcons.getIcon(weatherDetails.weather?.first.icon ?? ''),
                ),
                Text(
                  'Dubai',
                  style:
                  AppStyles.kMainTitle.copyWith(fontSize: 75.sp,
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 0.045.sw),
                      child: Text(
                          '${weatherDetails.main?.temp?.toInt()}',
                          style: AppStyles.kMainTitle.copyWith(
                              fontSize: 200.sp,
                              fontWeight: FontWeight.w300)),
                    ),
                    Positioned(
                      right: 0,
                      child: Text('°',
                          style: AppStyles.kMainTitle.copyWith(
                              fontSize: 150.sp,
                              fontWeight: FontWeight.w100)),
                    )
                  ],
                ),
                Text('Feels like ${weatherDetails.main?.feelsLike?.toInt()}°',style: AppStyles.kMainTitle.copyWith(fontSize: 50.sp),),
                Expanded(
                  child: GridView.count(physics: NeverScrollableScrollPhysics(),padding: EdgeInsets.symmetric(horizontal: 0.03.sw,vertical: 0.01.sh),crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,children: [WeatherDetailsCard(
                      name: 'Wind',
                      value: getWindString(
                          weatherDetails.wind?.speed ?? 0)),
                    WeatherDetailsCard(
                      name: 'Humidity',
                      value: getHumidityString(
                          weatherDetails.main?.humidity ?? 0),
                    ),
                    WeatherDetailsCard(
                        name: 'Visibilty',
                        value: getVisibilityString(
                            weatherDetails.visibility ?? 0)),
                    WeatherDetailsCard(
                        name: 'Pressure',
                        value: getPressureString(
                            weatherDetails.main?.pressure ?? 0))],),
                ),
            ],
          ),
              )),
        ],
      ),
    );
  }

  String getVisibilityString(int value) {
    if (value >= 1000) {
      return '${value / 1000} Km';
    } else
      return value.toString() + 'm';
  }

  String getHumidityString(int value) {
    return value.toString() + ' %';
  }

  String getWindString(double value) {
    if (value > 1000)
      return (value / 1000).floor().toString() + ' km/s';
    else
      return value.toString() + ' m/s';
  }

  String getPressureString(int value) {
    return value.toString() + ' hPa';
  }
}
