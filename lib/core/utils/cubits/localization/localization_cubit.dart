import 'package:bloc/bloc.dart';
import 'package:catching_kawa_app/core/helper/services/shared_preferance.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocalizationInitial());
  static const _key = 'language';

  Future<void> changeLanguage() async {
    final langsaved = await SharedPreferance.getData<String>(_key);
    print('Current language: $langsaved');

    if (langsaved == 'en') {
      await SharedPreferance.setData(key: _key, value: 'ar');

      emit(LanguageChangedState('en'));
    } else if (langsaved == 'ar' || langsaved == null) {
      await SharedPreferance.setData(key: _key, value: 'en');

      emit(LanguageChangedState(langsaved ?? 'en'));
    }
  }
}
