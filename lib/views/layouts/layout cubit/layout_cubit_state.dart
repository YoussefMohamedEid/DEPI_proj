part of 'layout_cubit_cubit.dart';

@immutable
sealed class LayoutCubitState {}

final class LayoutCubitInitial extends LayoutCubitState {}

final class ChangeBody extends LayoutCubitState {}

