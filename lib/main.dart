import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'core/services/dependency_injection.dart';
import 'core/utils/helpers/bloc_observer.dart';
import 'core/utils/helpers/cache_helper.dart';
import 'core/utils/helpers/secure_cache_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await ServicesLocator().init();
  await CacheHelper.init();
  await SecureCacheHelper.init();
  runApp(const MyApp());
}
