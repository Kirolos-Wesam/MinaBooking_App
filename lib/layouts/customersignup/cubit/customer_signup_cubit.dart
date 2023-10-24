import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'customer_signup_state.dart';

class CustomerSignUpCubit extends Cubit<CustomerSignUpState> {
  CustomerSignUpCubit() : super(CustomerSignUpInitial());

  static CustomerSignUpCubit get(context) => BlocProvider.of(context);

  List<String> titles = ['Mr', 'Mrs', 'Ms', 'Miss'];
  String? dropdownValue;

  void changeDropDownValue(String value){
    dropdownValue = value.toString();
    emit(DropDownValueState());
  }
}
