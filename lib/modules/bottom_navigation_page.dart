import 'package:bottom_navigation/modules/bloc/bottomnavigation_bloc.dart';
import 'package:bottom_navigation/modules/view/history_page.dart';
import 'package:bottom_navigation/modules/view/home_page.dart';
import 'package:bottom_navigation/modules/view/my_account_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  @override
  Widget build(BuildContext context) {
    final BottomnavigationBloc bottomnnavigationBloc =
        BlocProvider.of<BottomnavigationBloc>(context);
    return Scaffold(
      body: BlocBuilder<BottomnavigationBloc, BottomnavigationState>(
        bloc: bottomnnavigationBloc,
        builder: (BuildContext context, BottomnavigationState state) {
          if (bottomnnavigationBloc.currentIndex ==0) {
            return const HomePage();
          }
          if (bottomnnavigationBloc.currentIndex==1) {
            return const MyAccountPage();
          }
          if (bottomnnavigationBloc.currentIndex==2) {
            return const HistoryPage();
          }
          return Container();
        },
      ),
      bottomNavigationBar:
          BlocBuilder<BottomnavigationBloc, BottomnavigationState>(
              bloc: bottomnnavigationBloc,
              builder: (BuildContext context, BottomnavigationState state) {
                return BottomNavigationBar(
                    currentIndex: bottomnnavigationBloc.currentIndex,
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        label: '',
                        icon: Icon(Icons.home, color: Colors.black),
                      ),
                      BottomNavigationBarItem(
                        label: '',
                        icon: Icon(Icons.person, color: Colors.black),
                      ),
                      BottomNavigationBarItem(
                        label: '',
                        icon: Icon(Icons.all_inclusive, color: Colors.black),
                      ),
                    ],
                    onTap: (index) {
                      // print(index);
                      setState(() {});
                      bottomnnavigationBloc.currentIndex = index;
                      print(bottomnnavigationBloc.currentIndex);
                    });
              }),
    );
  }
}
