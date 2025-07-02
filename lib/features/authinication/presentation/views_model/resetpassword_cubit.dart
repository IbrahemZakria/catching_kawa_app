import 'package:bloc/bloc.dart';
import 'package:catching_kawa_app/features/authinication/data/models/user_model.dart';
import 'package:catching_kawa_app/features/authinication/domain/usecases/reset_password_use_case.dart';

part 'resetpassword_state.dart';

class ResetpasswordCubit extends Cubit<ResetpasswordState> {
  ResetpasswordCubit(this.resetPasswordUseCase) : super(ResetpasswordInitial());
  final ResetPasswordUseCase resetPasswordUseCase;
  Future resetPassword({required int id, required String pass}) async {
    var result = await resetPasswordUseCase.call(id, pass);
    result.fold(
      (failure) {
        emit(ResetpasswordFailedState(errorMessage: failure.errorMessage));
      },
      (userModel) {
        emit(ResetpasswordSuccessState(userModel: userModel));
      },
    );
  }
}
