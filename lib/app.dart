import 'package:flutter/material.dart';
import 'package:kafiiltask/core/utils/helpers/app_color.dart';

import 'core/utils/helpers/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'Kafiil Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light().copyWith(
          primary: AppColor.mainColor,
        ),
        useMaterial3: true,
      ),
    );
  }
}
