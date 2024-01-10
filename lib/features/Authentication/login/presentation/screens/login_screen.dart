import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kafiiltask/core/utils/components/custom_button.dart';
import 'package:kafiiltask/core/utils/components/custom_text.dart';
import 'package:kafiiltask/core/utils/components/custom_text_field.dart';
import 'package:kafiiltask/core/utils/helpers/app_color.dart';
import 'package:kafiiltask/core/utils/helpers/assetsManager.dart';
import 'package:kafiiltask/core/utils/helpers/enums.dart';
import 'package:kafiiltask/core/utils/helpers/extensions.dart';

import '../../../../../core/services/dependency_injection.dart';
import '../manager/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  /// TODO: transsfer to cubit
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(sl()),
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: BlocConsumer<LoginCubit, LoginState>(
                  listener: (context, state) {
                    // TODO: implement listener
                    if (state is LoginErrorState) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: CustomText(text: state.msg)));
                    }
                    if (state is LoginSuccessState) {
                      context.pushReplacementNamed(Routes.HomeScreen.name);
                    }
                  },
                  builder: (context, state) {
                    final loginCubit = BlocProvider.of<LoginCubit>(context);
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            InkWell(
                                onTap: () {},
                                child: const Icon(Icons.arrow_back_ios)),
                            const Expanded(
                              child: CustomText(
                                text: 'Account Login',
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        32.ph,
                        Align(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                                AssetsManager.loginImageAsset)),
                        20.ph,
                        CustomTextField(
                          controller: loginCubit.emailController,
                          borderRadius: 16,
                          labelText: 'Email Addresss',
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          textInputType: TextInputType.emailAddress,
                          allowSpaces: false,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Email address is required";
                            } else if (!value.isValidEmail()) {
                              return "Email is not valid";
                            }
                            return null;
                          },
                        ),
                        16.ph,
                        CustomTextField(
                          controller: loginCubit.passController,
                          borderRadius: 16,
                          isObscure: loginCubit.isObscure,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          textInputType: TextInputType.text,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Password is required";
                            }
                            return null;
                          },
                          suffixIcon: GestureDetector(
                            onTap: () {
                              /// TODO: Apply show and hide password
                              loginCubit.togglePasswordVisibility();
                            },
                            child: Icon(
                              loginCubit.isObscure
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: AppColor.suffixIconColor,
                              size: 18,
                            ),
                          ),
                          labelText: 'Password',
                        ),
                        10.ph,
                        Row(
                          children: [
                            Checkbox.adaptive(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.compact,
                              value: loginCubit.isRememberMeChecked,
                              checkColor: Colors.white,
                              // color of tick Mark
                              activeColor: AppColor.mainColor,
                              onChanged: (bool? value) {
                                loginCubit.changeRememberMeChecked(value!);
                              },
                            ),
                            const CustomText(
                              text: 'Remember me',
                              fontColor: AppColor.textColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {},
                              child: const CustomText(
                                text: 'Forget Password?',
                                fontColor: AppColor.textColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        32.ph,
                        state is LoginLoadingState
                            ? Center(
                                child: CircularProgressIndicator(),
                              )
                            : CustomButton(
                                btnText: 'Login',
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    print('pressed');
                                    loginCubit.loginUser();
                                  }
                                },
                                borderRadius: 12,
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 20),
                              ),
                        24.ph,
                        Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Don't have an account? ",
                                    style: GoogleFonts.montserrat().copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: AppColor.textColor)),
                                TextSpan(
                                  text: "Register",
                                  style: GoogleFonts.montserrat().copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: AppColor.mainColor),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      /// TODO: Navigate to Register Screen
                                      context.pushNamed(
                                          Routes.RegisterScreen.name);
                                    },
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
