part of 'customer_signup_cubit.dart';

@immutable
sealed class CustomerSignUpState {}

final class CustomerSignUpInitial extends CustomerSignUpState {}

final class DropDownValueState extends CustomerSignUpState {}
