import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_task/core/resources.dart';
import 'package:weather_app_task/features/weather_of_day/domain/entities/info.dart';
import 'package:weather_app_task/features/weather_of_day/ui/widgets/weather_brief_days_card.dart';
import 'package:weather_app_task/features/weather_of_day/ui/widgets/weather_brief_other_info_card.dart';

class HomePageWeatherInfo extends StatelessWidget {
  final List<Info> info;

  HomePageWeatherInfo(this.info);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 0.02.sh),
          child: Column(children: [
            Text('Today',style: AppStyles.kMainTitle,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${info.first.main?.temp?.toInt()}' + '°',
                  style: AppStyles.kMainTitle,
                ),
                Image.asset(AppIcons.getIcon(info.first.weather?.first.icon ?? '01d'))
              ],
            ),
            Text(
              '${info.first.main?.tempMin?.toInt()}°/${info.first.main?.tempMax?.toInt()}° Feels like  ${info.first.main?.feelsLike?.toInt()}°',
              style: AppStyles.kMainTitle.copyWith(fontSize: 50.sp),
            ),SizedBox(height: 0.01.sh,),
            Text(
              '${info.first.weather?.first.main}',
              style: AppStyles.kMainTitle.copyWith(fontSize: 100.sp),
            ),
            WeatherBriefOtherInfoCard(
              humidity: info.first.main?.humidity ?? 0,
              windSpeed: info.first.wind?.speed ?? 0,
            ),
            WeatherBrief5DaysCard(info),
          ])),
    );
  }
}
