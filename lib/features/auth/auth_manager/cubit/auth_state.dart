part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class LoginSuccess extends AuthState {
  final String successMessage;
  final String email;

  LoginSuccess({required this.email, required this.successMessage});
}

final class RegisterSuccess extends AuthState {
  final String email;
  final String successMessage;

  RegisterSuccess({required this.email, required this.successMessage});
}

final class AuthFailuer extends AuthState {
  final String failureMessage;

  AuthFailuer({required this.failureMessage});
}
