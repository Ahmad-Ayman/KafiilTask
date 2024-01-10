part of 'profile_cubit.dart';

@immutable
abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileInitial extends ProfileState {}

class ProfileLoadingState extends ProfileState {}

class ProfileSuccessState extends ProfileState {
  final WhoAmIResponseModel profileModel;

  const ProfileSuccessState(this.profileModel);

  @override
  List<Object> get props => [profileModel];
}

class ProfileErrorState extends ProfileState {
  final String msg;

  const ProfileErrorState(this.msg);

  @override
  List<Object> get props => [msg];
}
