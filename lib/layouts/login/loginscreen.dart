import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minabooking_app/layouts/customersignup/customersignupscreen.dart';
import 'package:minabooking_app/layouts/login/cubit/login_cubit.dart';
import 'package:minabooking_app/shared/componets/componets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var loginCubit = LoginCubit.get(context);
        TextEditingController emailController = TextEditingController();
        TextEditingController passwordController = TextEditingController();
        return Scaffold(
          backgroundColor: const Color(0xFF1C5D99),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 570,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/favicon.png',
                                  width: 100,
                                  height: 100,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: TextFormField(
                                    controller: emailController,
                                    decoration: const InputDecoration(
                                        labelText: 'E-mail',
                                        prefixIcon: Icon(Icons.email)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 35,
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: TextFormField(
                                    controller: passwordController,
                                    obscureText: loginCubit.isPassword,
                                    decoration: InputDecoration(
                                        labelText: 'Password',
                                        prefixIcon: const Icon(Icons.password),
                                        suffixIcon: IconButton(
                                          icon:
                                               Icon(loginCubit.suffix),
                                          onPressed: () {
                                            loginCubit.changePasswordVisibility();
                                          },
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        value: loginCubit.rememberMe, onChanged: (value) {
                                          loginCubit.rememberMeChange(value!);
                                        }),
                                    const Text(
                                      'Remember Me',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    const Spacer(),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Forget Password ?',
                                          style: TextStyle(
                                              color: Colors.blue, fontSize: 13),
                                        ))
                                  ],
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    TextButton(onPressed: (){
                                      navigateTo(context, const CustomerSignUpScreen());
                                    }, child: const Text('Create Account', style: TextStyle(color: Colors.blue),)),
                                  ],
                                ),
                                const Spacer(),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(onPressed: (){}, child: Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))),
                                const Spacer(),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                        child: CircleAvatar(
                                      backgroundColor: Colors.red,
                                      radius: 30,
                                      child: Text(
                                        'G',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                    InkWell(
                                        child: CircleAvatar(
                                      backgroundColor: Colors.blue,
                                      radius: 30,
                                      child: Icon(
                                        Icons.facebook,
                                        size: 30,
                                      ),
                                    )),
                                    InkWell(
                                        child: CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      radius: 30,
                                      child: Icon(
                                        Icons.phone,
                                        color: Colors.black,
                                      ),
                                    ))
                                  ],
                                )
                              ]),
                        ),
                      )
                    ]),
              ),
            ),
          ),
        );
      },
    );
  }
}
