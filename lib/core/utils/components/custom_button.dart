import 'package:flutter/material.dart';
import 'package:kafiiltask/core/utils/components/custom_text.dart';
import 'package:kafiiltask/core/utils/helpers/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.width,
      this.height,
      this.fillColor,
      this.borderRadius,
      required this.btnText,
      this.btnTextColor,
      this.btnTextFontWeight,
      this.btnTextFontSize,
      required this.onTap,
      required this.contentPadding});

  final double? width;
  final double? height;
  final Color? fillColor;
  final double? borderRadius;
  final String btnText;
  final Color? btnTextColor;
  final FontWeight? btnTextFontWeight;
  final double? btnTextFontSize;
  final EdgeInsets contentPadding;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? MediaQuery.sizeOf(context).width,
        height: height,
        padding: contentPadding,
        decoration: BoxDecoration(
            color: fillColor ?? AppColor.mainColor,
            borderRadius: BorderRadius.circular(borderRadius ?? 0)),
        child: Center(
          child: CustomText(
            text: btnText,
            fontColor: btnTextColor ?? AppColor.backgroundColor,
            fontWeight: btnTextFontWeight ?? FontWeight.w500,
            fontSize: btnTextFontSize ?? 14,
          ),
        ),
      ),
    );
  }
}
