import 'package:flutter/material.dart';
import 'package:weather_app_task/core/di/di_manager.dart';
import 'package:weather_app_task/core/navigator/app_navigator.dart';
import 'package:weather_app_task/core/ui/widgets/info_card.dart';
import 'package:weather_app_task/features/weather_of_day/domain/entities/info.dart';
import 'package:weather_app_task/features/weather_of_day/ui/widgets/weather_brief_day.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class WeatherBrief5DaysCard extends StatelessWidget {
 final List<Info> info;

  WeatherBrief5DaysCard(this.info);

  @override
  Widget build(BuildContext context) {
    return InfoCard(padding: EdgeInsets.symmetric(vertical: 0.02.sh,
        horizontal:0.05.sw
    ),margin: EdgeInsets.symmetric(vertical: 0.01.sh ),
        child: Row(mainAxisAlignment: MainAxisAlignment.start,
          children:_build(),
        ),);
  }

 List<WeatherBriefDay> _build() {
    List<WeatherBriefDay> widgets = [];
    List<List<Info>> listInfo = [];
    int nextDayIndex;
    var todayDate = DateTime.parse(info.first.dtTxt!);
    var hour = todayDate.hour;
    nextDayIndex = getNextDayIndex(hour);
    // separate each day weather-info list
    listInfo.add(info.getRange(0, nextDayIndex).toList());
   listInfo.add(info.getRange(nextDayIndex, nextDayIndex+8).toList());
    nextDayIndex +=  8;
    listInfo.add(info.getRange(nextDayIndex, nextDayIndex+8).toList());
    nextDayIndex +=  8;
    listInfo.add(info.getRange(nextDayIndex, nextDayIndex+8).toList());
    nextDayIndex +=  8;
    listInfo.add(info.getRange(nextDayIndex, nextDayIndex+8).toList());
    listInfo[4].forEach((element) {print(element.dtTxt);
    print(element.weather?.first.icon);});
    for(int day=0;day<5;day++){
      widgets.add(WeatherBriefDay(
        day: todayDate.weekday,
        callback: (){
          getIt<AppNavigator>().pushNamed('second_page',arguments:listInfo[day]);
        },
        humidity: listInfo[day][day==0?0:3].main?.humidity ?? 0,
        dayIcon: listInfo[day][day==0?0:3].weather?.first.icon ?? '',
        nightIcon: listInfo[day].last.weather?.first.icon ?? '',
        dayTemp: listInfo[day][day==0?0:3].main?.temp ??0,
        nightTemp: listInfo[day].last.main?.temp ?? 0,
      ));
      todayDate =todayDate.add(Duration(days: 1));
    }
    return widgets;
    }
    int getNextDayIndex(int hour){
      switch (hour) {
        case 0:
       return  8;
        case 3:
          return 7;
        case 6:
          return 6;
        case 9:
          return 5;
        case 12:
          return 4;
        case 15:
          return 3;
        case 18:
          return 2;
        case 21:
          return 1;
        default:
          return 1;
      }
    }
  }
