import 'package:chef_app/core/services/service_locator.dart';
import 'package:chef_app/feature/auth/presentation/managers/login_cubit/login_cubit.dart';
import 'package:chef_app/feature/auth/presentation/widgets/login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<LoginCubit>(),
        child: const LoginBody(),
      ),
    );
  }
}
