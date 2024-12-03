import 'package:chef_app/feature/auth/presentation/screens/login_screen.dart';
import 'package:chef_app/feature/menu/presentation/screens/menu_home_screen.dart';
import 'package:chef_app/feature/profile/presentation/screens/change_password_screen.dart';
import 'package:chef_app/feature/profile/presentation/screens/profile_home_screen.dart';
import 'package:chef_app/feature/profile/presentation/screens/setting_screen.dart';
import 'package:chef_app/feature/profile/presentation/screens/update_profile_screen.dart';
import 'package:go_router/go_router.dart';

import 'package:chef_app/core/utils/router/routes.dart';

import 'package:chef_app/feature/auth/presentation/screens/change_language_screen.dart';
import 'package:chef_app/feature/auth/presentation/screens/reset_password_screen.dart';
import 'package:chef_app/feature/auth/presentation/screens/send_code_screen.dart';
import 'package:chef_app/feature/menu/presentation/screens/add_meal_screen.dart';
import 'package:chef_app/feature/auth/presentation/screens/splash_screen.dart';

class CustomRouter {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
        path: Routes.KInitialRoute,
        builder: (context, state) => const LoginScreen()),
    GoRoute(
        path: Routes.KChangeLanguage,
        builder: (context, state) => const ChangeLanguageScreen()),
    GoRoute(
        path: Routes.KResetPassword,
        builder: (context, state) => const ResetPasswordScreen()),
    GoRoute(
        path: Routes.KSendCode,
        builder: (context, state) => const SendCodeScreen()),
    GoRoute(
        path: Routes.KAddMeal,
        builder: (context, state) => const AddMealScreen()),
    GoRoute(
        path: Routes.KMenu,
        builder: (context, state) => const MenuHomeScreen()),
    GoRoute(
        path: Routes.KChangePassword,
        builder: (context, state) => const ChangePasswordScreen()),
    GoRoute(
        path: Routes.KProfileHome,
        builder: (context, state) => const ProfileHomeScreen()),
    GoRoute(
        path: Routes.KSetting,
        builder: (context, state) => const SettingScreen()),
    GoRoute(
        path: Routes.KUpdateProfile,
        builder: (context, state) => const UpdateProfileScreen()),
  ]);
}
