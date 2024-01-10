import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:kafiiltask/features/Authentication/login/data/data_sources/remote_data_source/login_process_remote_service.dart';
import 'package:kafiiltask/features/Authentication/login/data/repositories/login_repository_impl.dart';
import 'package:kafiiltask/features/Authentication/login/domain/repositories/base_login_repository.dart';
import 'package:kafiiltask/features/Authentication/login/domain/use_cases/login_process_usecase.dart';
import 'package:kafiiltask/features/Authentication/login/presentation/manager/login_cubit.dart';
import 'package:kafiiltask/features/Home/presentation/manager/home_layout_cubit.dart';
import 'package:kafiiltask/features/Home/sub_features/who_am_i/data/data_sources/remote_data_source/get_profile_remote_service.dart';
import 'package:kafiiltask/features/Home/sub_features/who_am_i/data/repositories/get_profile_repository_impl.dart';
import 'package:kafiiltask/features/Home/sub_features/who_am_i/domain/repositories/base_profile_repository.dart';
import 'package:kafiiltask/features/Home/sub_features/who_am_i/domain/use_cases/get_profile_process_usecase.dart';
import 'package:kafiiltask/features/Home/sub_features/who_am_i/presentation/manager/profile_cubit.dart';

import '../networking/network_service.dart';

final sl = GetIt.instance;

class ServicesLocator {
  init() {
    /// Cubits
    sl.registerFactory(() => LoginCubit(sl()));
    sl.registerFactory(() => HomeLayoutCubit());
    sl.registerFactory(() => ProfileCubit(sl()));

    /// Use cases
    sl.registerLazySingleton(() => LoginProcessUseCase(sl()));
    sl.registerLazySingleton(() => GetProfileProcessUseCase(sl()));

    ///Repository
    sl.registerLazySingleton<BaseLoginRepository>(() => ILoginRepository(sl()));
    sl.registerLazySingleton<BaseProfileRepository>(
        () => ProfileRepository(sl()));

    ///DataSource
    sl.registerLazySingleton<LoginProcessRemoteService>(
        () => LoginProcessRemoteService(sl()));

    sl.registerLazySingleton<GetProfileProcessRemoteService>(
        () => GetProfileProcessRemoteService(sl()));

    sl.registerFactory(() => RemoteService(Dio()));
  }
}
