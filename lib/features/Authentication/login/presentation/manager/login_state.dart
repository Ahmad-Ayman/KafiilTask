part of 'login_cubit.dart';

@immutable
abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {
  final LoginResponseModel loginResponseModel;

  const LoginSuccessState(this.loginResponseModel);

  @override
  List<Object> get props => [loginResponseModel];
}

class LoginErrorState extends LoginState {
  final String msg;

  const LoginErrorState(this.msg);

  @override
  List<Object> get props => [msg];
}

class ChangePassVisibilityState extends LoginState {}

class ChangeIsRememberMeCheckedState extends LoginState {}
