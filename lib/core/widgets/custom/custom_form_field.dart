import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sb_myreports/core/utils/extension/extensions.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {required this.hintText,
      this.obscureText = false,
      this.readOnly = false,
      this.controller,
      this.keyboardType,
      this.inputFormatters,
      this.focusNode,
      this.onFieldSubmitted,
      this.onChanged,
      this.validator,
      this.maxLines,
      this.enabled,
      this.contentPadding,
      this.prefixIconPath,
      this.prefixIconSize,
      this.suffixIconPath,
      this.suffixIconSize,
      this.suffixIconOnTap,
      this.onTap,
      this.suffix,
      this.prefix,
      this.networkPrefix = true,
      this.interactiveSelection = true,
      this.maxLength,
      this.minLength,
      this.maxLengthEnforced,
      this.minLines,
      this.textInputAction,
      Key? key,
      this.isPassword = false,
      this.autovalidateMode})
      : super(key: key);
  final String hintText;
  final bool obscureText;
  final bool readOnly;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final Function(String)? onFieldSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final int? minLength;
  final bool? maxLengthEnforced;
  final bool? enabled;
  final EdgeInsets? contentPadding;
  final String? prefixIconPath;
  double? prefixIconSize;
  final String? suffixIconPath;
  double? suffixIconSize;
  final Function()? suffixIconOnTap;
  final Function()? onTap;
  final Widget? prefix;
  final Widget? suffix;
  final bool networkPrefix;
  final bool interactiveSelection;
  final TextInputAction? textInputAction;
  final AutovalidateMode? autovalidateMode;
  bool isPassword;
  ValueNotifier<bool> obscurePasswod = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ValueListenableBuilder<bool>(
            valueListenable: obscurePasswod,
            builder: (_, obscure, __) {
              return TextFormField(
                autovalidateMode: autovalidateMode,
                enableInteractiveSelection: interactiveSelection,
                readOnly: readOnly,
                enabled: enabled,
                obscureText: isPassword ? obscure : false,
                obscuringCharacter: '●',
                controller: controller,
                keyboardType: keyboardType,
                inputFormatters: inputFormatters,
                focusNode: focusNode,
                onFieldSubmitted: onFieldSubmitted,
                onChanged: onChanged,
                cursorHeight: 18,
                maxLines: maxLines,
                minLines: minLines,
                textInputAction: textInputAction,
                maxLength: maxLength,
                maxLengthEnforcement: maxLengthEnforced == true
                    ? MaxLengthEnforcement.enforced
                    : MaxLengthEnforcement.none,
                onTap: onTap,
                style: GoogleFonts.openSans(
                  color: const Color(0xFF000812),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.25,
                ),
                decoration: InputDecoration(
                  counterText: "",
                  filled: false,
                  hintStyle: TextStyle(fontSize: 12.sp, color: Colors.black26),
                  fillColor: Theme.of(context).scaffoldBackgroundColor,
                  hintText: hintText,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black)),
                  suffixIcon: suffixIconPath == null
                      ? null
                      : GestureDetector(
                          onTap: suffixIconOnTap,
                          child: Transform.translate(
                            offset: Offset(0, -1.h),
                            child: Padding(
                              padding: EdgeInsets.only(right: 16.w),
                              child: SvgPicture.asset(
                                suffixIconPath!,
                                height: suffixIconSize,
                              ),
                            ),
                          ),
                        ),
                  prefixIcon: SizedBox(
                    width: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: prefixIconPath == null
                          ? null
                          // ignore: unnecessary_null_comparison
                          : prefixIconPath!.ext != null
                              ? SvgPicture.asset(
                                  prefixIconPath!,
                                  height: 16,
                                  width: 16,
                                )
                              : Image.asset(
                                  prefixIconPath!,
                                  height: 40.sp,
                                  width: 40.sp,
                                ),
                    ),
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 16.w,
                    minHeight: 16.w,
                  ),
                  suffixIconConstraints:
                      BoxConstraints(minWidth: 16.w, minHeight: 16.w),
                  suffix: isPassword
                      ? GestureDetector(
                          onTap: () {
                            obscurePasswod.value = !obscurePasswod.value;
                          },
                          child: Icon(
                            obscure ? Icons.visibility : Icons.visibility_off,
                          ),
                        )
                      : null,
                  prefix: prefix,
                ),
                validator: validator,
              );
            }),
      ],
    );
  }
}
