import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kafiiltask/core/utils/helpers/cache_helper.dart';
import 'package:kafiiltask/core/utils/helpers/secure_cache_helper.dart';
import 'package:kafiiltask/features/Authentication/login/data/models/login_body_model.dart';
import 'package:kafiiltask/features/Authentication/login/data/models/login_response_model.dart';
import 'package:kafiiltask/features/Authentication/login/domain/use_cases/login_process_usecase.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginProcessUseCase) : super(LoginInitial());

  final LoginProcessUseCase loginProcessUseCase;

  static LoginCubit get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool isObscure = true;
  bool isRememberMeChecked = false;
  void loginUser() async {
    emit(LoginLoadingState());
    LoginBodyModel loginBodyModel = LoginBodyModel(
        email: emailController.text, password: passController.text);
    final result = await loginProcessUseCase.executeLoginProcess(
        loginBodyModel: loginBodyModel);
    result.fold((failure) {
      emit(LoginErrorState(failure.error.message));
    }, (data) {
      if (isRememberMeChecked) {
        CacheHelper.saveData(key: 'remember_me', value: true);
      }
      SecureCacheHelper.saveSecuredData(key: 'Token', value: data.access_token);
      emit(LoginSuccessState(data));
    });
  }

  void togglePasswordVisibility() {
    emit(LoginInitial());
    isObscure = !isObscure;
    emit(
        ChangePassVisibilityState()); // Toggle the state between true and false.
  }

  void changeRememberMeChecked(bool check) {
    emit(LoginInitial());
    isRememberMeChecked = check;
    emit(
        ChangeIsRememberMeCheckedState()); // Toggle the state between true and false.
  }
}
