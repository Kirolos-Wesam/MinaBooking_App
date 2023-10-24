import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minabooking_app/layouts/customersignup/customersignupscreen.dart';
import 'package:minabooking_app/layouts/guest/cubit/guest_cubit.dart';
import 'package:minabooking_app/layouts/login/loginscreen.dart';
import 'package:minabooking_app/shared/componets/componets.dart';

class GuestScreen extends StatelessWidget {
  const GuestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GuestCubit, GuestState>(
      listener: (context, state) {
        
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xFF1C5D99),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.asset('assets/images/LOGO.jpg', width: 150, height: 150,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    navigateTo(context, const CustomerSignUpScreen());
                  }, style: ElevatedButton.styleFrom(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25)), ),
                  ), child: const Text('Create Account', style: TextStyle(color: Color(0xFF1C5D99)),),),
                  const SizedBox(width: 8,),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(onPressed: (){
                      navigateTo(context, const LoginScreen());
                    }, style: ElevatedButton.styleFrom(
                      backgroundColor: MaterialStateColor.resolveWith((states) => Colors.blue),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25)))
                    ), child: const Text('login', style: TextStyle(color: Colors.white),),),
                  ),
                ],
               ),
               const SizedBox(height: 10,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  const Text('Partner ?',  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                   TextButton(onPressed: (){}, child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold, decoration: TextDecoration.underline, decorationThickness: 2.0),)),
                 ],
               )
            ]),
          ),
        );
      },
    );
  }
}
