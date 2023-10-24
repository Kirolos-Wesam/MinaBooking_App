import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minabooking_app/blocobserver.dart';
import 'package:minabooking_app/layouts/guest/guestscreen.dart';
import 'package:minabooking_app/layouts/onboarding/onboardingscreen.dart';
import 'package:minabooking_app/myapp.dart';
import 'package:minabooking_app/shared/network/local/cachehelper.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();

  Bloc.observer= MyBlocObserver();

  bool onBoarding = false;
  Widget? widget;

  if(CacheHelper.getData(key: 'OnBoarding') != null){
    onBoarding = CacheHelper.getData(key: 'OnBoarding');
    widget = GuestScreen();
  }
  else widget = OnboardingScreen();
  

  runApp( MyApp(widget: widget,));
}




