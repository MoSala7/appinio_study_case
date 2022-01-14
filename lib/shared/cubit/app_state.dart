part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class AppSuccessTimerState extends AppState {}

class AppErrorTimerState extends AppState {}

class AppSuccessCityState extends AppState {}

class AppErrorCityState extends AppState {}
