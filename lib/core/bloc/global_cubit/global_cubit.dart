import 'package:bloc/bloc.dart';
import 'package:chef_app/core/dataBase/cache/cache_helper.dart';
import 'package:chef_app/core/services/service_locator.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial('en'));

  bool isArabic = false;
  String languageCode = 'en';
  void changeLanguage(String langCode) async {
    languageCode = langCode;
    await sl<CacheHelper>().cacheLanguage(languageCode);
    emit(GlobalInitial(languageCode));
  }

  void getCachedLanguages() async {
    languageCode = await sl<CacheHelper>().getCachedLanguage();
    emit(GlobalInitial(languageCode));
  }
}
