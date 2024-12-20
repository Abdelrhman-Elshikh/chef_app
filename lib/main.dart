import 'package:chef_app/app/app.dart';
import 'package:chef_app/core/bloc/global_cubit/global_cubit.dart';
import 'package:chef_app/core/dataBase/cache/cache_helper.dart';
import 'package:chef_app/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   initServiceLocator();
  await sl<CacheHelper>().init();
  runApp(BlocProvider(
    create: (context) => sl<GlobalCubit>()..getCachedLanguages(),
    child: const MyApp(),
  ));
}
