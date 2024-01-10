import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../sub_features/countries/presentation/pages/countries_screen.dart';
import '../../sub_features/services/presentation/pages/services_screen.dart';
import '../../sub_features/who_am_i/presentation/pages/who_am_i_screen.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeLayoutInitial());
  static HomeLayoutCubit get(context) => BlocProvider.of(context);
  int activeBottomNavBarIndex = 0;

  void changeActiveBottomNavBarIndex(index) {
    emit(HomeLayoutInitial());
    activeBottomNavBarIndex = index;
    emit(
        ChangeBottomNavBarIndexState()); // Toggle the state between true and false.
  }

  List<Widget> homeLayoutPages = [
    WhoAmIScreen(),
    CountriesScreen(),
    ServicesScreen(),
  ];
}
