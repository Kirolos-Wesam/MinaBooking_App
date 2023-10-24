import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:minabooking_app/layouts/guest/guestscreen.dart';
import 'package:minabooking_app/models/onboardingmodel.dart';
import 'package:minabooking_app/shared/componets/componets.dart';
import 'package:minabooking_app/shared/network/local/cachehelper.dart';

part 'onboarding_screen_state.dart';

class OnboardingScreenCubit extends Cubit<OnboardingScreenState> {
  OnboardingScreenCubit() : super(OnboardingScreenInitial());

  static OnboardingScreenCubit get(context) => BlocProvider.of(context);

    List<OnboardingModel> onboarding = [
      OnboardingModel(image: 'assets/images/LOGO.jpg', title: 'Welcome To MinaBooking', body: 'The best deals on airport parking'),
      OnboardingModel(image: 'assets/images/LOGO.jpg', title: 'The Benefits of MinaBooking', body: 'all parking lots are carefully inspected'),
      OnboardingModel(image: 'assets/images/LOGO.jpg', title: 'The Benefits of MinaBooking', body: 'Over 2 million customers globally'),
    ];

    bool lastPage = false;
    var boardController = PageController();


    void lastPageTrue(){
        lastPage = true;
        emit(OnboardingLastPageState());
    }

    void lastPageFalse(){
        lastPage = false;
        emit(OnboardingLastPageState());
    }

    void onSubmit(context){
      CacheHelper.saveData(key: 'OnBoarding', value: true).then((value) {
        if(value){
          navigateAndFinish(context, GuestScreen());
          emit(OnSubmitOnboardingState());
          print('done');
        }
      });
    }
}
