import 'package:chef_app/core/bloc/global_cubit/global_cubit.dart';
import 'package:chef_app/core/dataBase/api/api_consumer.dart';
import 'package:chef_app/core/dataBase/api/dio_consumer.dart';
import 'package:chef_app/core/dataBase/cache/cache_helper.dart';
import 'package:chef_app/feature/auth/data/repository/auth_repo_impl.dart';
import 'package:chef_app/feature/auth/presentation/managers/login_cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initServiceLocator() {
  sl.registerLazySingleton(() => GlobalCubit());

  sl.registerLazySingleton(() => LoginCubit());

  sl.registerLazySingleton(() => CacheHelper());

  sl.registerLazySingleton(() => Dio());

  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(sl<Dio>()));

  sl.registerLazySingleton(() => AuthRepoImpl());
}
