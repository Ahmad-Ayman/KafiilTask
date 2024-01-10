import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kafiiltask/core/utils/helpers/app_color.dart';
import 'package:kafiiltask/core/utils/helpers/extensions.dart';

import 'custom_text.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.autovalidateMode,
      this.validator,
      this.onChange,
      this.isObscure,
      this.hint,
      this.textInputType,
      required this.controller,
      this.onSaved,
      this.onEditComplete,
      this.textAlign,
      this.suffixIcon,
      this.fillColor = AppColor.textFieldBackgroundColor,
      this.borderRadius = 0,
      this.prefixIcon,
      this.borderColor,
      this.labelText,
      this.allowSpaces = true,
      this.isEnabled = true,
      this.maxLines})
      : super(key: key);
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final void Function()? onEditComplete;
  final Function(String?)? onChange;
  final bool? isObscure;
  final String? hint;
  final TextInputType? textInputType;
  final TextEditingController controller;
  final FormFieldSetter<String>? onSaved;
  final TextAlign? textAlign;
  final Widget? suffixIcon;
  final Color fillColor;
  final double borderRadius;
  final Widget? prefixIcon;
  final Color? borderColor;
  final String? labelText;
  final bool allowSpaces;
  final bool isEnabled;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (labelText != null) ...[
              CustomText(
                text: labelText!,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
              8.ph,
            ],
            TextFormField(
              autovalidateMode: autovalidateMode,
              onSaved: onSaved,
              textAlign: textAlign ?? TextAlign.start,
              onChanged: onChange,
              validator: validator,
              enabled: isEnabled,
              controller: controller,
              maxLines: isObscure ?? false ? 1 : maxLines,
              obscureText: isObscure ?? false,
              onEditingComplete: onEditComplete,
              keyboardType: textInputType,
              style: GoogleFonts.montserrat()
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 16),
              inputFormatters: allowSpaces
                  ? []
                  : [FilteringTextInputFormatter.deny(RegExp(r'\s'))],
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 2, color: borderColor ?? fillColor),
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: fillColor),
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.redAccent),
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.redAccent),
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: fillColor),
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  fillColor: fillColor,
                  filled: true,
                  suffixIcon: suffixIcon,
                  prefixIcon: prefixIcon,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
                  border: const OutlineInputBorder(),
                  hintText: hint,
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.grey)),
            ),
          ],
        ));
  }
}
