import 'package:chef_app/app/app.dart';
import 'package:chef_app/core/bloc/global_cubit/global_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => GlobalCubit(),
    child: const MyApp(),
  ));
}
