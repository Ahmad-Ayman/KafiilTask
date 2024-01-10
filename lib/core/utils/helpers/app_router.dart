import 'package:go_router/go_router.dart';
import 'package:kafiiltask/core/utils/helpers/cache_helper.dart';
import 'package:kafiiltask/features/Authentication/register/presentation/pages/register_screen.dart';

import '../../../features/Authentication/login/presentation/screens/login_screen.dart';
import '../../../features/Home/presentation/pages/home_layout.dart';
import 'enums.dart';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: !CacheHelper.contains(key: 'remember_me')
        ? '/'
        : CacheHelper.getData(key: 'remember_me')
            ? '/Home'
            : '/',
    routes: [
      GoRoute(
          path: '/',
          name: Routes.LoginScreen.name,
          builder: (context, state) => LoginScreen()),
      GoRoute(
          path: '/Register',
          name: Routes.RegisterScreen.name,
          builder: (context, state) => RegisterScreen()),
      GoRoute(
          path: '/Home',
          name: Routes.HomeScreen.name,
          builder: (context, state) => HomeLayout()),
      // GoRoute(
      //   path: '/movieDetails',
      //   name: Routes.MovieDetailsScreen.name,
      //   pageBuilder: (context, state) {
      //     MovieDataModel movieDataModel = state.extra as MovieDataModel;
      //     return CustomTransitionPage<void>(
      //       key: state.pageKey,
      //       child: MovieDetailsScreen(
      //         movieData: movieDataModel,
      //       ),
      //       transitionsBuilder:
      //           (context, animation, secondaryAnimation, child) =>
      //               ScaleTransition(scale: animation, child: child),
      //     );
      //   },
      // ),
    ],
  );
}
