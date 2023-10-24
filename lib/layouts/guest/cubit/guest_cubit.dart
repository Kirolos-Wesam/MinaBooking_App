import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'guest_state.dart';

class GuestCubit extends Cubit<GuestState> {
  GuestCubit() : super(GuestInitial());
}
