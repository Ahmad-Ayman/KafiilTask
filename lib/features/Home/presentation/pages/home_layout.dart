import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kafiiltask/core/utils/helpers/custom_icons_icons.dart';
import 'package:kafiiltask/features/Home/presentation/manager/home_layout_cubit.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeLayoutCubit(),
      child: BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
        builder: (context, state) {
          final homeLayoutCubit = BlocProvider.of<HomeLayoutCubit>(context);
          return Scaffold(
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                splashFactory: NoSplash.splashFactory,
              ),
              child: BottomNavigationBar(
                onTap: (index) {
                  homeLayoutCubit.changeActiveBottomNavBarIndex(index);
                },
                currentIndex: homeLayoutCubit.activeBottomNavBarIndex,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(CustomIcons.usercircle), label: 'Who Am I'),
                  BottomNavigationBarItem(
                      icon: Icon(CustomIcons.globehemispherewest),
                      label: 'Countries'),
                  BottomNavigationBarItem(
                      icon: Icon(CustomIcons.shoppingcartsimple),
                      label: 'Services'),
                ],
              ),
            ),
            body: homeLayoutCubit
                .homeLayoutPages[homeLayoutCubit.activeBottomNavBarIndex],
          );
        },
      ),
    );
  }
}
