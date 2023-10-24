import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minabooking_app/layouts/onboarding/cubit/onboarding_screen_cubit.dart';
import 'package:minabooking_app/models/onboardingmodel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingScreenCubit, OnboardingScreenState>(
      listener: (context, state) {},
      builder: (context, state) {
        var onboardingCubit = OnboardingScreenCubit.get(context);
        return Scaffold(
          backgroundColor: const Color(0xFF1C5D99),
          appBar: AppBar(
            actions: [
              TextButton(
                  onPressed: () {
                    onboardingCubit.onSubmit(context);
                  },
                  child: const Text(
                    'SKIP',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(children: [
              Expanded(
                  child: PageView.builder(
                itemBuilder: ((context, index) =>
                    onBoarding(onboardingCubit.onboarding[index])),
                onPageChanged: (int index) {
                  if (index == onboardingCubit.onboarding.length - 1) {
                    onboardingCubit.lastPageTrue();
                  } else {
                    onboardingCubit.lastPageFalse();
                  }
                },
                itemCount: onboardingCubit.onboarding.length,
                controller: onboardingCubit.boardController,
                physics: const BouncingScrollPhysics(),
              )),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  SmoothPageIndicator(
                    controller: onboardingCubit.boardController,
                    count: onboardingCubit.onboarding.length,
                    effect: const ExpandingDotsEffect(
                        dotColor: Colors.grey,
                        activeDotColor: Colors.white,
                        dotHeight: 8,
                        expansionFactor: 4,
                        dotWidth: 10,
                        spacing: 5.0),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      if (onboardingCubit.lastPage) {
                        onboardingCubit.onSubmit(context);
                      } else {
                        onboardingCubit.boardController.nextPage(
                            duration: Duration(milliseconds: 750),
                            curve: Curves.fastLinearToSlowEaseIn);
                      }
                    },
                    icon: const Icon(Icons.arrow_forward_ios, color: Colors.white,),
                  )
                ],
              )
            ]),
          ),
        );
      },
    );
  }

  Widget onBoarding(OnboardingModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Image(
          image: AssetImage(model.image),
        )),
        const SizedBox(
          height: 24.0,
        ),
        Text(
          model.title,
          style: const TextStyle(fontSize: 24.0, color: Colors.white),
        ),
        const SizedBox(
          height: 24.0,
        ),
        Text(
          model.body,
          style: const TextStyle(fontSize: 14.0, color: Colors.white),
        )
      ],
    );
  }
}
