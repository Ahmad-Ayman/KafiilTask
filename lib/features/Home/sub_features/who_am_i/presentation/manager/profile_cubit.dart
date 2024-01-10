import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kafiiltask/features/Home/sub_features/who_am_i/data/models/who_am_i_model.dart';
import 'package:kafiiltask/features/Home/sub_features/who_am_i/domain/use_cases/get_profile_process_usecase.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this.getProfileProcessUseCase) : super(ProfileInitial());
  final GetProfileProcessUseCase getProfileProcessUseCase;

  static ProfileCubit get(context) => BlocProvider.of(context);
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  TextEditingController salaryController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();

  void getProfile() async {
    emit(ProfileLoadingState());

    final result = await getProfileProcessUseCase.executeGetProfileProcess();
    result.fold((failure) {
      emit(ProfileErrorState(failure.error.message));
    }, (data) {
      firstNameController.text = data.profileModel!.first_name!;
      lastNameController.text = data.profileModel!.last_name!;
      emailController.text = data.profileModel!.email!;
      passwordController.text = '********';
      aboutController.text = data.profileModel!.about!;
      salaryController.text = 'SAR ${data.profileModel!.salary!.toString()}';
      birthDateController.text = data.profileModel!.birth_date!;

      emit(ProfileSuccessState(data));
    });
  }
}
