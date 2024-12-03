import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chef_app/core/services/service_locator.dart';
import 'package:chef_app/feature/auth/data/repository/auth_repo_impl.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoginPasswordHiding = true;
  IconData suffixIcon = Icons.visibility_outlined;

  void changeLoginPasswordVisibility() {
    emit(LoginInitial());

    isLoginPasswordHiding = !isLoginPasswordHiding;
    suffixIcon =
        isLoginPasswordHiding ? Icons.visibility : Icons.visibility_off;

    emit(ChangeLoginPasswordVisibility());
  }

  void login() async {
    emit(LoginLoadingState());

    var result = await sl<AuthRepoImpl>()
        .login(email: emailController.text, password: passwordController.text);

    result.fold((error) {
      emit(LoginFailureState(
          errorMessage: error.errorModel.errorMessage.toString()));
    }, (response) {
      emit(LoginSuccessState());
    });
  }
}
