import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sb_myreports/core/utils/enums/page_state_enum.dart';
import '../../../../../core/router/app_state.dart';
import '../../../../../core/router/models/page_config.dart';
import '../../../../../core/utils/constants/app_assets.dart';
import '../../../../../core/utils/globals/globals.dart';
import '../../../../../core/widgets/custom/buttons_custom_widget.dart';
import '../../../../../core/widgets/custom/custom_form_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SignInScreenContent();
  }
}

class SignInScreenContent extends StatefulWidget {
  const SignInScreenContent({Key? key}) : super(key: key);
  @override
  State<SignInScreenContent> createState() => _SignInScreenContentState();
}

class _SignInScreenContentState extends State<SignInScreenContent> {
  bool value = false;
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color(0xFF6256B7),
                  Color(0xFF0A295A),
                ],
              )),
              height: 300.h,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.sp),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 36.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Rental\nCAR',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 42.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
          Positioned(
            top: 0,
            left: 20,
            right: 20,
            child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                    clipBehavior: Clip.none,
                    controller: scrollController,
                    child: KeyboardVisibilityBuilder(
                        builder: (context, isKeyboardVisible) {
                      return Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 280.h),
                              Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 2,
                                          offset: const Offset(0, 4))
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30.0, right: 30, top: 40),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomTextFormField(
                                        hintText: "User Name/Mobile no.",
                                        prefixIconPath: AppAssets.peopleSvg,
                                      ),
                                      SizedBox(
                                        height: 30.h,
                                      ),
                                      CustomTextFormField(
                                        hintText: "Password",
                                        prefixIconPath: AppAssets.passwordSvg,
                                        suffixIconPath: AppAssets.eyeOffSvg,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 60),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                AppState appState = sl();
                                                appState.goToNext(PageConfigs
                                                    .forgotPasswordScreenPageConfig);
                                              },
                                              child: const Text(
                                                "Forgot Password?",
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      ButtonsCustomWidget(
                                          buttonTitle: 'Log in',
                                          buttonColor: const Color(0xFF6356B7),
                                          textColor: Colors.white,
                                          onPressed: () {
                                            AppState appState = sl();
                                            appState.goToNext(
                                                PageConfigs
                                                    .homeScreenPageConfig,
                                                pageState: PageState.replace);
                                          }),
                                      SizedBox(
                                        height: 50.h,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: isKeyboardVisible ? 300 : 60),
                            ],
                          ),
                          Positioned(
                            bottom: 30,
                            left: 30,
                            right: 30,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 30.h, bottom: 6),
                                  child: Text(
                                    "or",
                                    style: (TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.sp)),
                                  ),
                                ),
                                ButtonsCustomWidget(
                                  buttonTitle: 'Sign in with Google',
                                  buttonColor: const Color(0xFFDB4437),
                                  textColor: Colors.white,
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  height: 6.h,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }))),
          ),
          Positioned(
              top: 92,
              left: 160,
              child: SvgPicture.asset(
                AppAssets.loginCarSvg,
                height: 210,
              )),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 18,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          visualDensity: VisualDensity.compact,
                          side: BorderSide(width: 1.w),
                          checkColor: Colors.greenAccent,
                          activeColor: const Color(0xFF6256B7),
                          value: value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ),
                        Text(
                          'Remember Me',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          AppState appState = sl();
                          appState.goToNext(PageConfigs.signUpScreenPageConfig,
                              pageState: PageState.replace);
                        },
                        child: Text(
                          " Sign Up",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
