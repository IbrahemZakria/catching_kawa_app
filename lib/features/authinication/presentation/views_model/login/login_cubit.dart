import 'package:bloc/bloc.dart';
import 'package:catching_kawa_app/features/authinication/data/models/user_model.dart';
import 'package:catching_kawa_app/features/authinication/domain/usecases/auth_login_use_case.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authLoginUseCase) : super(LoginInitial());
  final AuthLoginUseCase _authLoginUseCase;
  Future authLogin({required int id, required String pass}) async {
    emit(LoginLoadingState());
    var result = await _authLoginUseCase.call(id, pass);
    result.fold(
      (failures) {
        emit(LoginFailedState(failures.errorMessage));
      },
      (userModel) {
        emit(LoginSuccessState(userModel: userModel));
      },
    );
  }
}
