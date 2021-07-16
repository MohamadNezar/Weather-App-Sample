

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class AppIcons{

 static final windIcon = 'assets/icons/wind.svg';
 static final humidityIcon = 'assets/icons/humidity.svg';
 static final clearSkyD = 'assets/icons/clear_sky_d.png';
 static final clearSkyN = 'assets/icons/clear_sky_n.png';
 static final fewCloudsD = 'assets/icons/few_clouds_d.png';
 static final fewCloudsN = 'assets/icons/few_clouds_n.png';
 static final scatteredClouds = 'assets/icons/scattered_clouds.png';
 static final brokenClouds = 'assets/icons/broken_clouds.png';
 static final showerRain = 'assets/icons/shower_rain.png';
 static final rainD = 'assets/icons/rain_d.png';
 static final rainN = 'assets/icons/rain_n.png';
 static final thunderStorm = 'assets/icons/thunderstorm.png';
 static final snow = 'assets/icons/snow.png';
 static final mist = 'assets/icons/mist.png';

 static String getIcon(String value){
   switch(value){
     case '01d':
       return clearSkyD;
     case '01n':
       return clearSkyN;
     case '02d':
       return fewCloudsD;
     case '02n':
       return fewCloudsN;
     case '03d':
     case '03n':
       return scatteredClouds;
     case '04d':
       case '04n':
         return brokenClouds;
     case '09d':
     case '09n':
       return showerRain;
     case '10d':
       return rainD;
     case '10n':
       return rainN;
     case '11d':
     case '11n':
       return thunderStorm;
     case '13d':
     case '13n':
       return snow;
     case '50d':
     case '50n':
       return mist;
     default :
       return clearSkyD;
   }
 }

}

abstract class AppColors{

  static Color mainColor = Color(0xffEB6E4B);
}

abstract class AppStyles{


 static TextStyle get kMainTitle =>TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize:150.sp );

 static TextStyle get kWeatherDetails =>TextStyle(color: Colors.white,fontSize: 25.sp);
}
