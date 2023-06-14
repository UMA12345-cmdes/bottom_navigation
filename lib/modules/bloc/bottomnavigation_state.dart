part of 'bottomnavigation_bloc.dart';

@immutable
abstract class BottomnavigationState {
  @override
  List<Object> get props => [];
}

class BottomnavigationInitial extends BottomnavigationState {
  final int index;
  
  BottomnavigationInitial({required this.index});
}

class PageLoading extends BottomnavigationState {
  @override
  String toString() => 'PageLoading';
}

class HomePageLoaded extends BottomnavigationState {}

class MyAccountPageLoaded extends BottomnavigationState {}

class HistoryPageLoaded extends BottomnavigationState {}
