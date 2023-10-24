import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minabooking_app/layouts/customersignup/cubit/customer_signup_cubit.dart';

class CustomerSignUpScreen extends StatelessWidget {
  const CustomerSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerSignUpCubit, CustomerSignUpState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var signUpCubit = CustomerSignUpCubit.get(context);
        return Scaffold(
          backgroundColor: const Color(0xFF1C5D99),
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  Container(
                    width: double.infinity,
                    height: 600,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.grey[200]),
                    child: SingleChildScrollView(
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
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Tittle'),
                                      SizedBox(height: 3,),
                                      Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),border: Border.all(color: Colors.grey)),
                                        child: DropdownButton(
                                          items: [
                                            for (int i = 0;
                                                i < signUpCubit.titles.length;
                                                i++)
                                              DropdownMenuItem(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left:8.0),
                                                  child: Text(
                                                    signUpCubit.titles[i].toString(),
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w400),
                                                  ),
                                                ),
                                                value: signUpCubit.titles[i].toString(),
                                              )
                                          ],
                                          onChanged: (value) {
                                            signUpCubit.changeDropDownValue(value!);
                                          },
                                          value: signUpCubit.dropdownValue,
                                          hint: Text(
                                            'Title',
                                            style:
                                                TextStyle(fontWeight: FontWeight.w400),
                                          ),
                                          elevation: 25,
                                          borderRadius: BorderRadius.circular(15),
                                          underline: Container(),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('First Name'),
                                        SizedBox(height: 3,),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), border: Border.all(color: Colors.grey)),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'First Name',
                                              prefixIcon: Icon(Icons.person),
                                              border: InputBorder.none
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 20,),
                              Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Last Name'),
                                        SizedBox(height: 3,),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), border: Border.all(color: Colors.grey)),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'Last Name',
                                              prefixIcon: Icon(Icons.person),
                                              border: InputBorder.none
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Email Address'),
                                        SizedBox(height: 3,),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), border: Border.all(color: Colors.grey)),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'Email Address',
                                              prefixIcon: Icon(Icons.email),
                                              border: InputBorder.none
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Country'),
                                        SizedBox(height: 3,),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), border: Border.all(color: Colors.grey)),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'Country',
                                              prefixIcon: Icon(Icons.map_outlined),
                                              border: InputBorder.none
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('City'),
                                        SizedBox(height: 3,),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), border: Border.all(color: Colors.grey)),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'City',
                                              prefixIcon: Icon(Icons.location_city),
                                              border: InputBorder.none
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Postal Code'),
                                        SizedBox(height: 3,),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), border: Border.all(color: Colors.grey)),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'Postal Code',
                                              prefixIcon: Icon(Icons.location_on),
                                              border: InputBorder.none
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Password'),
                                        SizedBox(height: 3,),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), border: Border.all(color: Colors.grey)),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'Password',
                                              prefixIcon: Icon(Icons.password),
                                              suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
                                              border: InputBorder.none
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Confirm Password'),
                                        SizedBox(height: 3,),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), border: Border.all(color: Colors.grey)),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'Confirm Password',
                                              prefixIcon: Icon(Icons.password),
                                              suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
                                              border: InputBorder.none
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                            ]),
                      ),
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
