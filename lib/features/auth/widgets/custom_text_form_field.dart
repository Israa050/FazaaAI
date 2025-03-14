import 'package:flutter/material.dart';
import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final TextInputType? textInputType;
  final int? minLines;
  final int? maxLines;
  final VoidCallback? onIconPressed;
  final Image? image;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.textInputType,
    this.minLines,
    this.maxLines,
    this.onIconPressed,
    this.image
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          minLines: minLines ?? 1,
          maxLines: maxLines,
          keyboardType: textInputType,
          controller: controller,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: contentPadding ??
                EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            focusedBorder: focusedBorder ??
                OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.primaryBlue,
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                ),
            enabledBorder: enabledBorder ??
                OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.blueGrey,
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
            hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
            hintText: hintText,
            suffixIcon: suffixIcon,
            fillColor: backgroundColor ?? AppColors.moreLightGray,
            filled: true,
          ),
          obscureText: isObscureText ?? false,
          style: TextStyles.font14DarkBlueMedium,
          validator: (value) {
            return validator(value);
          },
        ),
        if(image != null)
        Positioned(
             bottom: 20,
          right: 20,
          child: GestureDetector(
            onTap: onIconPressed,
            child: SizedBox(
                  height: 40,
                  width: 40,
                  child: image,
                ),
          ),
        ),
      ],
    );
  }
}
