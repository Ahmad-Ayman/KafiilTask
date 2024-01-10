import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:kafiiltask/core/utils/components/custom_button.dart';
import 'package:kafiiltask/core/utils/components/custom_text_field.dart';
import 'package:kafiiltask/core/utils/helpers/cache_helper.dart';
import 'package:kafiiltask/core/utils/helpers/enums.dart';
import 'package:kafiiltask/core/utils/helpers/extensions.dart';
import 'package:kafiiltask/core/utils/helpers/secure_cache_helper.dart';

import '../../../../../../core/services/dependency_injection.dart';
import '../../../../../../core/utils/components/custom_image_circle.dart';
import '../../../../../../core/utils/components/custom_text.dart';
import '../../../../../../core/utils/helpers/app_color.dart';
import '../../../../../../core/utils/helpers/assetsManager.dart';
import '../manager/profile_cubit.dart';

class WhoAmIScreen extends StatelessWidget {
  const WhoAmIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedType = 1;

    return BlocProvider(
      create: (context) => ProfileCubit(sl())..getProfile(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
            child: BlocConsumer<ProfileCubit, ProfileState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                final profileCubit = BlocProvider.of<ProfileCubit>(context);
                if (state is ProfileLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is ProfileSuccessState) {
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Expanded(
                              child: CustomText(
                                text: 'Who Am I',
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        32.ph,
                        Align(
                          alignment: Alignment.center,
                          child: CustomImageCircle(
                            imageLink: state.profileModel.profileModel!.avatar!,
                          ),
                        ),
                        32.ph,
                        Row(
                          children: [
                            Expanded(
                                child: CustomTextField(
                              controller: profileCubit.firstNameController,
                              labelText: 'First Name',
                              isEnabled: false,
                              borderRadius: 16,
                            )),
                            9.pw,
                            Expanded(
                                child: CustomTextField(
                              controller: profileCubit.lastNameController,
                              isEnabled: false,
                              labelText: 'Last Name',
                              borderRadius: 16,
                            )),
                          ],
                        ),
                        16.ph,
                        CustomTextField(
                          controller: profileCubit.emailController,
                          labelText: 'Email Address',
                          borderRadius: 16,
                          isEnabled: false,
                        ),
                        16.ph,
                        CustomTextField(
                          controller: profileCubit.passwordController,
                          borderRadius: 16,
                          isEnabled: false,
                          isObscure: true,
                          textInputType: TextInputType.text,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              /// TODO: Apply show and hide password
                            },
                            child: const Icon(
                              Icons.visibility_off_outlined,
                              color: AppColor.suffixIconColor,
                              size: 18,
                            ),
                          ),
                          labelText: 'Password',
                        ),
                        16.ph,
                        const CustomText(
                          text: 'User Type',
                          fontWeight: FontWeight.w500,
                        ),
                        16.ph,
                        Row(
                          children: [
                            Expanded(
                              child: RadioButton(
                                description: "Buyer",
                                value: 1,
                                groupValue: state
                                    .profileModel.profileModel!.type!.code!,
                                fillColor: state.profileModel.profileModel!
                                            .type!.code! ==
                                        1
                                    ? AppColor.mainColor
                                    : AppColor.unSelectedRadioColor,
                                onChanged: (value) {},
                                textPosition: RadioButtonTextPosition.right,
                              ),
                            ),
                            Expanded(
                              child: RadioButton(
                                description: "Seller",
                                value: 2,
                                groupValue: state
                                    .profileModel.profileModel!.type!.code!,
                                fillColor: state.profileModel.profileModel!
                                            .type!.code! ==
                                        2
                                    ? AppColor.mainColor
                                    : AppColor.unSelectedRadioColor,
                                onChanged: (value) {},
                                textPosition: RadioButtonTextPosition.right,
                              ),
                            ),
                            Expanded(
                              child: RadioButton(
                                description: "Both",
                                value: 3,
                                groupValue: state
                                    .profileModel.profileModel!.type!.code!,
                                fillColor: state.profileModel.profileModel!
                                            .type!.code! ==
                                        3
                                    ? AppColor.mainColor
                                    : AppColor.unSelectedRadioColor,
                                onChanged: (value) {},
                                textPosition: RadioButtonTextPosition.right,
                              ),
                            ),
                          ],
                        ),
                        16.ph,
                        CustomTextField(
                          controller: profileCubit.aboutController,
                          isEnabled: false,
                          labelText: 'About',
                          maxLines: 4,
                          borderRadius: 16,
                        ),
                        16.ph,
                        CustomTextField(
                          controller: profileCubit.salaryController,
                          isEnabled: false,
                          labelText: 'Salary',
                          borderRadius: 16,
                        ),
                        16.ph,
                        CustomTextField(
                          controller: profileCubit.birthDateController,
                          isEnabled: false,
                          labelText: 'Birth Date',
                          suffixIcon: Image.asset('assets/images/calendar.png'),
                          borderRadius: 16,
                        ),
                        16.ph,
                        const CustomText(text: 'Gender'),
                        16.ph,
                        Row(
                          children: [
                            Expanded(
                              child: RadioButton(
                                description: "Male",
                                value: 0,
                                groupValue:
                                    state.profileModel.profileModel!.gender!,
                                fillColor:
                                    state.profileModel.profileModel!.gender! ==
                                            0
                                        ? AppColor.mainColor
                                        : AppColor.unSelectedRadioColor,
                                onChanged: (value) {},
                                textPosition: RadioButtonTextPosition.right,
                              ),
                            ),
                            Expanded(
                              child: RadioButton(
                                description: "Female",
                                value: 1,
                                groupValue:
                                    state.profileModel.profileModel!.gender!,
                                fillColor:
                                    state.profileModel.profileModel!.gender! ==
                                            1
                                        ? AppColor.mainColor
                                        : AppColor.unSelectedRadioColor,
                                onChanged: (value) {},
                                textPosition: RadioButtonTextPosition.right,
                              ),
                            ),
                          ],
                        ),
                        16.ph,
                        const CustomText(text: 'Skills'),
                        Container(
                          width: MediaQuery.sizeOf(context).width,
                          padding: const EdgeInsets.all(11),
                          decoration: BoxDecoration(
                              color: AppColor.greyColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: Wrap(
                            spacing: 8,
                            runSpacing: 4,
                            children: List.generate(
                              state.profileModel.profileModel!.tags!.length,
                              (index) => Chip(
                                deleteIcon: const Icon(
                                  Icons.close,
                                  size: 15,
                                ),
                                deleteIconColor: AppColor.mainColor,
                                onDeleted: () {},
                                label: Text(
                                  state.profileModel.profileModel!.tags![index]
                                      .name!,
                                ),
                                labelStyle: GoogleFonts.montserrat().copyWith(
                                    color: AppColor.mainColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900),

                                side: BorderSide.none,
                                // onSelected: (bool value) {},
                                color: MaterialStateProperty.all<Color>(
                                    AppColor.chipColor),
                                backgroundColor: AppColor.chipColor,
                                // checkmarkColor: AppColor.chipColor,
                              ),
                            ),
                          ),
                        ),
                        16.ph,
                        const CustomText(text: 'Favorite Social Media'),
                        16.ph,
                        CheckboxListTile(
                          enabled: false,
                          checkColor: Colors.white,
                          fillColor: state.profileModel.profileModel!
                                  .favorite_social_media!
                                  .contains('facebook')
                              ? MaterialStateProperty.all<Color>(
                                  AppColor.mainColor)
                              : null,
                          title: Row(
                            children: [
                              Image.asset(
                                AssetsManager.fbIconAsset,
                                width: 20,
                                height: 20,
                              ),
                              8.pw,
                              const CustomText(
                                text: "Facebook",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ],
                          ),
                          value: state.profileModel.profileModel!
                                  .favorite_social_media!
                                  .contains('facebook')
                              ? true
                              : false,
                          onChanged: (newValue) {},
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                        CheckboxListTile(
                          enabled: false,
                          checkColor: Colors.white,
                          fillColor: state.profileModel.profileModel!
                                  .favorite_social_media!
                                  .contains('twitter')
                              ? MaterialStateProperty.all<Color>(
                                  AppColor.mainColor)
                              : null,
                          title: Row(
                            children: [
                              Image.asset(
                                AssetsManager.twitterIconAsset,
                                width: 20,
                                height: 20,
                              ),
                              8.pw,
                              const CustomText(
                                text: "Twitter",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ],
                          ),
                          value: state
                              .profileModel.profileModel!.favorite_social_media!
                              .contains('twitter'),
                          onChanged: (newValue) {},
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                        CheckboxListTile(
                          enabled: false,
                          checkColor: Colors.white,
                          fillColor: state.profileModel.profileModel!
                                  .favorite_social_media!
                                  .contains('linkedin')
                              ? MaterialStateProperty.all<Color>(
                                  AppColor.mainColor)
                              : null,
                          title: Row(
                            children: [
                              Image.asset(
                                AssetsManager.linkedInIconAsset,
                                width: 20,
                                height: 20,
                              ),
                              8.pw,
                              const CustomText(
                                text: "LinkedIn",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ],
                          ),
                          value: state
                              .profileModel.profileModel!.favorite_social_media!
                              .contains('linkedin'),
                          onChanged: (newValue) {},
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                        16.ph,
                        CustomButton(
                          btnText: 'Logout',
                          onTap: () {
                            SecureCacheHelper.clearSecureStorage();
                            CacheHelper.clearAll();
                            context.goNamed(Routes.LoginScreen.name);
                          },
                          contentPadding: EdgeInsets.all(16),
                          borderRadius: 15,
                        ),
                      ],
                    ),
                  );
                }
                if (state is ProfileErrorState) {
                  return Center(
                    child: CustomText(
                      text: 'Error ${state.msg}',
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
