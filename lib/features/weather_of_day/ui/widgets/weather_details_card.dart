import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_task/core/ui/widgets/info_card.dart';

class WeatherDetailsCard extends StatelessWidget {
  final String name;
  final String value;

  WeatherDetailsCard({required this.name, required this.value});
  @override
  Widget build(BuildContext context) {
    return InfoCard(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.sp,
                  fontWeight: FontWeight.w300),
            ),
            FittedBox(
                child: Text(
                  value,
                  style: TextStyle(
                      fontSize: 100.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ))
          ],
        ),
      ),
    );
  }
}
