import 'package:flutter/material.dart';
import 'package:weather_app_task/features/weather_of_day/ui/pages/home_page.dart';
import 'package:weather_app_task/features/weather_of_day/ui/pages/weather_details_page.dart';

class AppNavigator{

  final _navigationKey = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get navigationKey => _navigationKey;

  final Map<String, Widget Function(BuildContext context)> routs = {
    "/": (context) => HomePage(),
    "second_page":(context)=>WeatherDetailsPage()
  };

  void pop<T>([T? result]) {
    return navigationKey.currentState!.pop(result);
  }

  Future<T?> pushNamed<T>(String routeName, {dynamic arguments}) {
    return navigationKey.currentState!.pushNamed<T>(routeName, arguments: arguments);
  }

}