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
class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ForgotPasswordScreenContent();
  }
}
class ForgotPasswordScreenContent extends StatefulWidget {
  const ForgotPasswordScreenContent({Key? key}) : super(key: key);
  @override
  State<ForgotPasswordScreenContent> createState() =>
      _ForgotPasswordScreenContentState();
}
class _ForgotPasswordScreenContentState
    extends State<ForgotPasswordScreenContent> {
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
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23.sp,fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 240.h,
              left: 20.w,
              right: 20.w,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3))
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 30.0.w, right: 30.w, top: 100.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Forgot Your Password?',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16.sp),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              const Text(
                                'Please enter your email address associated\nwith your email. We will email you to\nreset your password.',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                              SizedBox(
                                height: 60.h,
                              ),
                              CustomTextFormField(
                                hintText: 'Enter Your Email',
                                prefixIconPath: AppAssets.emailSvg,
                              ),
                              SizedBox(height: 60.h),
                            ],
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
                        buttonTitle: 'Send',
                        buttonColor: const Color(0xFF6256B7),
                        textColor: Colors.white,
                        onPressed: () {
                          AppState appState = sl();
                          appState.goToNext(PageConfigs
                              .resetPasswordScreenPageConfig,pageState: PageState.replace);
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 290.h,
                    left: 85.w,
                    child: SvgPicture.asset(
                      AppAssets.forgotScreenSvg,
                      height: 200.h,
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}