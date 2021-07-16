


import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:weather_app_task/core/errors/base_error.dart';

part 'base_state.dart';
class BaseCubit extends Cubit<BaseState>{
  BaseCubit( BaseState initialState) : super(initialState);

}



