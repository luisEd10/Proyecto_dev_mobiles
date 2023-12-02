part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class VerifyAuthEvent extends AuthEvent {}

class RegisterAuthEvent extends AuthEvent {
  final String email;
  final String password;

  RegisterAuthEvent({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [email, password];
}


class EmailAuthEvent extends AuthEvent {
  final String email;
  final String password;

  EmailAuthEvent({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [email, password];
}

class SignOutEvent extends AuthEvent {}