import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_task/core/resources.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_task/core/ui/utils/icons/svg_icon.dart';

class WeatherBriefDay extends StatelessWidget {
  final int day;
  final String dayIcon;
  final String nightIcon;
  final int humidity;
  final double dayTemp;
  final double nightTemp;
  final void Function() callback;
  WeatherBriefDay(
      {required this.day,
      required this.dayIcon,
      required this.nightIcon,
      required this.humidity,
      required this.dayTemp,
      required this.nightTemp,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:callback ,
      child: Container(
        width: 0.16.sw,
        margin: EdgeInsets.only(right: 0.004.sw),
        child: Column(
          children: [
            FittedBox(fit: BoxFit.fitWidth,
              child: Text(
                getDatString(day),
                style: AppStyles.kWeatherDetails,
              ),
            ),
            Stack(
              children: [
                Positioned(right: 0,
                  child: Image.asset(
                    AppIcons.getIcon(nightIcon),
                    width: 0.1.sw,
                    height: 0.1.sh,
                  ),
                ),
                Center(
                  child: Transform.rotate(
                      angle: pi / 4,
                      child: Container(
                          height: 0.07.sh, width: 0.002.sw, color: Colors.white)),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Image.asset(AppIcons.getIcon(dayIcon),width: 0.1.sw,
                    height: 0.1.sh,),
                )
              ],
            ),
            SizedBox(height: 0.02.sh,),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              Text(
                '$humidity% ',
                style: AppStyles.kWeatherDetails,
              ),
              SvgIcon(
                iconUrl: AppIcons.humidityIcon,
                width: 0.02.sw,
                height: 0.02.sh,
              )
            ]),
            SizedBox(
              height: 0.025.sh,
            ),
            Text(
              ' ${dayTemp.toInt()}°',
              style: AppStyles.kWeatherDetails,
            ),
            Container(
                height: 0.08.sh,
                width: 0.017.sw,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                )),
            Text(
              ' ${nightTemp.toInt()}°',
              style: AppStyles.kWeatherDetails,
            )
          ],
        ),
      ),
    );
  }

  getDatString(int day) {
    switch (day) {
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      case 7:
        return 'Sunday';
    }
  }
}
