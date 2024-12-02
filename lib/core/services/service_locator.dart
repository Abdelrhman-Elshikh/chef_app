import 'package:chef_app/core/bloc/global_cubit/global_cubit.dart';
import 'package:chef_app/core/dataBase/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initServiceLocator() {
  sl.registerLazySingleton(() => GlobalCubit());

  sl.registerLazySingleton(() => CacheHelper());
}
