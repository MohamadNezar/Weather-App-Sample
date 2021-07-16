
import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app_task/features/weather_of_day/domain/entities/clouds.dart';

part 'clouds_model.g.dart';
@JsonSerializable(createToJson:false )

class CloudsModel extends Clouds{


  CloudsModel({  final int? all
  }):super(all: all);

 factory CloudsModel.fromJson(Map<String,dynamic>json)=>_$CloudsModelFromJson(json);}