part of 'estacionamiento_bloc.dart';

@immutable
sealed class EstacionamientoState {}

final class EstacionamientoInitial extends EstacionamientoState {}

final class EstacionamientoLoadingState extends EstacionamientoState {}

final class EstacionamientoErrorState extends EstacionamientoState {}

final class EstacionamientoSuccessState extends EstacionamientoState {}

final class EstacionamientoUnavailabeState extends EstacionamientoState {}
