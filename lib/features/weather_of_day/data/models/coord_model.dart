import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app_task/features/weather_of_day/domain/entities/coord.dart';
part 'coord_model.g.dart';
@JsonSerializable(createToJson:false )

class CoordModel extends Coord{

  CoordModel({ final double? lat,
  final double? lon}):super(lat: lat,lon: lon);
  factory CoordModel.fromJson(Map<String,dynamic>json)=>_$CoordModelFromJson(json);
}