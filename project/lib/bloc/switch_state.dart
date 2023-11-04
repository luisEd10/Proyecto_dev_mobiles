part of 'switch_bloc.dart';

@immutable
sealed class SwitchState {}

final class SwitchInitial extends SwitchState {}

final class SwitchOccupied extends SwitchState {}

final class SwitchFree extends SwitchState {}
