part of 'bottomnavigation_bloc.dart';

@immutable
abstract class BottomNavigationEvent {
  @override
  List<Object> get props => [];
}


class PageTapped extends BottomNavigationEvent {
  final int index;

  PageTapped({required this.index}) : super();

  @override
  String toString() => 'PageTapped: $index';
}


class HomePageEvent extends BottomNavigationEvent {}

class MyAccountPageEvent extends BottomNavigationEvent {}

class HistoryPageEvent extends BottomNavigationEvent {}

