import 'package:bottom_navigation/modules/bloc/bottomnavigation_bloc.dart';
import 'package:bottom_navigation/modules/bottom_navigation_page.dart';
import 'package:bottom_navigation/repository/history_page_repository.dart';
import 'package:bottom_navigation/repository/home_page_repository.dart';
import 'package:bottom_navigation/repository/my_account_page_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => BottomnavigationBloc(
          historyPageRepository: HistoryPageRepository(),
          homePageRepository: HomePageRepository(),
          myAccountPageRepository: MyAccountPageRepository(),
        ),
        child: const BottomNavigationPage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
