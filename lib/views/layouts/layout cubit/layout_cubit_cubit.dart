// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'layout_cubit_state.dart';

class LayoutCubit extends Cubit<LayoutCubitState> {
  LayoutCubit() : super(LayoutCubitInitial());

  int currentIndex = 0;
  void onTap(int index) {
    currentIndex = index;
    emit(ChangeBody());
  }
}
