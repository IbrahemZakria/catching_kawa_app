import 'package:bloc/bloc.dart';
import 'package:catching_kawa_app/core/helper/services/shared_preferance.dart';
import 'package:catching_kawa_app/core/utils/contant.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocalizationInitial());

  Future<void> changeLanguage() async {
    final langsaved = await SharedPreferance.getData<String>(Constants.key);
    print('Current language: $langsaved');

    if (langsaved == 'en') {
      await SharedPreferance.setData(key: Constants.key, value: 'ar');

      emit(LanguageChangedState('en'));
    } else if (langsaved == 'ar' || langsaved == null) {
      await SharedPreferance.setData(key: Constants.key, value: 'en');

      emit(LanguageChangedState(langsaved ?? 'en'));
    }
  }
}
