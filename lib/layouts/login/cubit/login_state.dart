part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class ChangePasswordVisibilityState extends LoginState {}

final class RememberMeState extends LoginState {}
