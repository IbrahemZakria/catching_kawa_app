import 'package:bloc/bloc.dart';
import 'package:catching_kawa_app/features/authinication/data/models/user_model.dart';
import 'package:catching_kawa_app/features/authinication/domain/usecases/otp_use_case.dart';

part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit(this.otpUseCase) : super(OtpInitial());
  final OtpUseCase otpUseCase;
  Future otp({required int id, required int pincode}) async {
    emit(OtploadingState());
    var result = await otpUseCase.call(id, pincode);
    result.fold(
      (failure) {
        emit(OtpFailedState(errorMessage: failure.errorMessage));
      },
      (userModel) {
        emit(OtpSucessState(userModel: userModel));
      },
    );
  }
}
