import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial('en'));

  bool isArabic = false;
  String languageCode = 'en';
  void changeLanguage() {
    languageCode = isArabic ? 'ar' : 'en';
    isArabic = !isArabic;
    emit(GlobalInitial(languageCode));
  }
}
