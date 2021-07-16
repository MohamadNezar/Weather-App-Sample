
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'app.dart';
import 'package:weather_app_task/core/di/di_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
   DI.init();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(MyApp());
}



