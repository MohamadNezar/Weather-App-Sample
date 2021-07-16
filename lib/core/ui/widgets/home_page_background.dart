import 'package:flutter/material.dart';
import 'package:weather_app_task/core/resources.dart';

class HomePageBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [AppColors.mainColor,Colors.grey],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter)),
    );
  }
}
