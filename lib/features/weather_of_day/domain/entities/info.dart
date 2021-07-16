
import 'clouds.dart';
import 'main.dart';
import 'sys.dart';
import 'weather.dart';
import 'wind.dart';

class Info{

 final int? dt;
 final  Main? main;
 final  List<Weather>? weather;
 final  Clouds? clouds;
 final  Wind? wind;
 final int? visibility;
 final dynamic pop;
 final Sys? sys;
 final String? dtTxt;

  Info({this.dt, this.main, this.weather, this.clouds, this.wind, this.visibility, this.pop, this.sys, this.dtTxt});

}