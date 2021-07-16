import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_task/core/resources.dart';
import 'package:weather_app_task/core/ui/utils/icons/svg_icon.dart';
import 'package:weather_app_task/core/ui/widgets/info_card.dart';

class WeatherBriefOtherInfoCard extends StatelessWidget {
  final int humidity;
  final double windSpeed;

  WeatherBriefOtherInfoCard({required this.humidity, required this.windSpeed});

  @override
  Widget build(BuildContext context) {
    return InfoCard(padding: EdgeInsets.symmetric(vertical: 0.02.sh,
        horizontal:0.05.sw
    ),margin: EdgeInsets.symmetric(vertical: 0.01.sh ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgIcon(
                iconUrl: AppIcons.windIcon,
                width: 0.05.sw,
                height: 0.05.sh,
                color: Colors.white,
              ),SizedBox(height: 0.01.sh,),
              Text('${windSpeed.toInt()} m/s',style: TextStyle(color: Colors.white),)
            ],
          ),
          Container(width:0.002.sw ,color: Colors.white,height: 0.1.sh,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgIcon(
                iconUrl: AppIcons.humidityIcon,
                color: Colors.white,height: 0.05.sh,width: 0.05.sw,
              ),
              SizedBox(height: 0.01.sh,),
              Text('$humidity%',style: TextStyle(color: Colors.white),)
            ],
          )
        ],
      ),
    );
  }
}
