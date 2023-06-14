import 'package:bloc/bloc.dart';
import 'package:bottom_navigation/repository/history_page_repository.dart';
import 'package:bottom_navigation/repository/home_page_repository.dart';
import 'package:bottom_navigation/repository/my_account_page_repository.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'bottomnavigation_event.dart';
part 'bottomnavigation_state.dart';

class BottomnavigationBloc
    extends Bloc<BottomNavigationEvent, BottomnavigationState> {
  final HomePageRepository homePageRepository;
  final MyAccountPageRepository myAccountPageRepository;
  final HistoryPageRepository historyPageRepository;
  int currentIndex = 0;
  BottomnavigationBloc(
      {required this.historyPageRepository,
      required this.homePageRepository,
      required this.myAccountPageRepository})
      : super(BottomnavigationInitial(index: 0)) {
    on<BottomNavigationEvent>((event, emit) {
      if (event is PageLoading) {
        print("loading");
      }
      if (event is PageTapped) {
        print("tapp");
        if (event is HomePageLoaded) {
          emit(HistoryPageLoaded());
          emit(
            BottomnavigationInitial(index: event.index),
          );
        }
        if (event.index == 1) {
          HistoryPageLoaded();
          emit(
            BottomnavigationInitial(index: event.index),
          );
        }
        if (event.index == 2) {
          HistoryPageLoaded();
          emit(
            BottomnavigationInitial(index: event.index),
          );
        }
      }
    });
  }
}
