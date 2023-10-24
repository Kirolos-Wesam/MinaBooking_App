part of 'onboarding_screen_cubit.dart';

@immutable
sealed class OnboardingScreenState {}

final class OnboardingScreenInitial extends OnboardingScreenState {}

final class OnboardingLastPageState extends OnboardingScreenState {}

final class OnSubmitOnboardingState extends OnboardingScreenState {}