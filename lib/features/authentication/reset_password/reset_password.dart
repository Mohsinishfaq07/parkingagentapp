import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sb_myreports/core/utils/enums/page_state_enum.dart';
import '../../../core/router/app_state.dart';
import '../../../core/router/models/page_config.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/globals/globals.dart';
import '../../../core/widgets/custom/buttons_custom_widget.dart';
import '../../../core/widgets/custom/custom_form_field.dart';
class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ResetPasswordScreenContent();
  }
}
class ResetPasswordScreenContent extends StatefulWidget {
  const ResetPasswordScreenContent({Key? key}) : super(key: key);
  @override
  State<ResetPasswordScreenContent> createState() =>
      _ResetPasswordScreenContentState();
}
class _ResetPasswordScreenContentState
    extends State<ResetPasswordScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 280.h,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF6256B7),
                        Color(0xFF0A295A),
                      ],
                    )),
                child: Padding(
                  padding: EdgeInsets.only(top: 60.h, left: 22.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 11.h),
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(100.r),
                              color: Colors.white,
                            ),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 15.sp,
                                ))),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        'Reset Password',
                        style: TextStyle(color: Colors.white, fontSize: 23 .sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 260.h,
              left: 20.w,
              right: 20.w,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3))
                              ],
                              borderRadius: BorderRadius.circular(20.r),
                              color: Colors.white),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 30.w, right: 30.w, top: 80.h),
                            child: Column(
                              children: [
                                CustomTextFormField(
                                  hintText: 'New Password',
                                  prefixIconPath: AppAssets.emailSvg,
                                  suffixIconPath: AppAssets.eyeOffSvg,suffixIconSize: 15.h,
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                CustomTextFormField(
                                  hintText: 'Verify Password',
                                  prefixIconPath: AppAssets.confirmPasswordSvg,
                                  suffixIconPath: AppAssets.eyeOffSvg,suffixIconSize: 15.h,
                                  obscureText: true,
                                ),
                                SizedBox(height: 50.h),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: -20.h,
                    left: 30.w,
                    right: 30.w,
                    child: SizedBox(
                      height: 40.h,
                      child: ButtonsCustomWidget(
                        buttonTitle: 'Confirm',
                        buttonColor: const Color(0xFF6256B7),
                        textColor: Colors.white,
                        onPressed: () {
                          AppState state = sl();
                          state.goToNext(PageConfigs.otpScreenPageConfig,
                              pageState: PageState.replace);
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 230.h,
                    left: 90.w,
                    child: SvgPicture.asset(
                      AppAssets.resetPasswordScreenSvg,
                      height: 150.h,
                    ),
                  ),
                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ],
        ));
  }
}