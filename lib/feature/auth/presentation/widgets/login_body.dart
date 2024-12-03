import 'dart:developer';

import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/utils/app_colors.dart';
import 'package:chef_app/core/utils/app_images.dart';
import 'package:chef_app/core/utils/app_strings.dart';
import 'package:chef_app/core/utils/router/routes.dart';
import 'package:chef_app/core/widgets/custom_elevated_button.dart';
import 'package:chef_app/core/widgets/custom_loading_widget.dart';
import 'package:chef_app/core/widgets/email_text_field.dart';
import 'package:chef_app/core/widgets/password_text_field.dart';
import 'package:chef_app/feature/auth/presentation/managers/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginFailureState) {
          log(state.errorMessage.toString());
        } else if (state is LoginSuccessState) {
          log(state.toString());
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                  height: 222.h,
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(AppAssets.imagesLoginBg))),
                  child: Column(
                    children: [
                      SizedBox(height: 92.h),
                      Text(
                        AppStrings.welcomeBack.tr(context),
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                color: AppColors.KWhiteColor, fontSize: 32.sp),
                      ),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 325.h),
                    Form(
                      key: BlocProvider.of<LoginCubit>(context).loginKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          EmailTextField(
                              controller: BlocProvider.of<LoginCubit>(context)
                                  .emailController),
                          SizedBox(height: 32.h),
                          PasswordTextField(
                            hintText: AppStrings.password.tr(context),
                            controller: BlocProvider.of<LoginCubit>(context)
                                .passwordController,
                            suffixIcon:
                                BlocProvider.of<LoginCubit>(context).suffixIcon,
                            isLoginPasswordHiding:
                                BlocProvider.of<LoginCubit>(context)
                                    .isLoginPasswordHiding,
                            onPressedSuffixIcon:
                                BlocProvider.of<LoginCubit>(context)
                                    .changeLoginPasswordVisibility,
                          ),
                          SizedBox(height: 24.h),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    context.push(Routes.KSendCode);
                                  },
                                  child: Text(
                                    AppStrings.forgetPassword.tr(context),
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                            color: AppColors.KGreyColor,
                                            fontSize: 16.sp),
                                  ))
                            ],
                          ),
                          SizedBox(height: 64.h),
                          state is LoginLoadingState
                              ? const CustomLoadingWidget()
                              : CustomElevatedButton(
                                  onPressed: () {
                                    if (BlocProvider.of<LoginCubit>(context)
                                        .loginKey
                                        .currentState!
                                        .validate()) {
                                      BlocProvider.of<LoginCubit>(context)
                                          .login();
                                    }
                                  },
                                  name: AppStrings.signIn.tr(context),
                                ),
                          SizedBox(height: 72.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(AppStrings.dontHaveAnAccount.tr(context),
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(color: AppColors.KGreyColor)),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    AppStrings.signUp.tr(context),
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium!
                                        .copyWith(
                                            color: AppColors.KPrimaryColor),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
