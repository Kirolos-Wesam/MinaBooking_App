import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minabooking_app/layouts/customersignup/cubit/customer_signup_cubit.dart';
import 'package:minabooking_app/layouts/guest/cubit/guest_cubit.dart';
import 'package:minabooking_app/layouts/login/cubit/login_cubit.dart';
import 'package:minabooking_app/layouts/onboarding/cubit/onboarding_screen_cubit.dart';

import 'shared/Theme/theme.dart';

class MyApp extends StatelessWidget {

  final Widget widget;

  const MyApp({super.key, required this.widget});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (Context) => OnboardingScreenCubit(),),
        BlocProvider(create: (context) => GuestCubit(),),
        BlocProvider(create: (context) => LoginCubit(),),
        BlocProvider(create: (context) => CustomerSignUpCubit(),)
      ],
      child: MaterialApp(
        title: 'MinaBooking',
        debugShowCheckedModeBanner: false,
        theme: light,
        home: widget,
      ),
    );
  }
}