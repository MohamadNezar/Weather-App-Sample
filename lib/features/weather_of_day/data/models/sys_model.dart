import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app_task/features/weather_of_day/domain/entities/sys.dart';
part 'sys_model.g.dart';
@JsonSerializable(createToJson:false )

class SysModel extends Sys{


  SysModel({  final String? pod
  }):super(pod: pod);

 factory SysModel.fromJson(Map<String,dynamic>json)=>_$SysModelFromJson(json);
}