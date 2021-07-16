

part of'base_bloc.dart';
abstract class BaseState  {}

class Initial extends BaseState {

}

class Loading extends BaseState {

}

class Failed extends BaseState{
  final BaseError error;
  final VoidCallback callback;

  Failed({required this.error,required this.callback});

}