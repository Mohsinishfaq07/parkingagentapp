import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sb_myreports/core/utils/enums/page_state_enum.dart';
import 'package:sb_myreports/core/widgets/custom/custom_form_field.dart';

import '../../../../../core/router/app_state.dart';
import '../../../../../core/router/models/page_config.dart';
import '../../../../../core/utils/constants/app_assets.dart';
import '../../../../../core/utils/globals/globals.dart';
import '../../../../../core/widgets/custom/buttons_custom_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SignUpScreenContent();
  }
}

class SignUpScreenContent extends StatefulWidget {
  const SignUpScreenContent({Key? key}) : super(key: key);

  @override
  State<SignUpScreenContent> createState() => _SignUpScreenContentState();
}

class _SignUpScreenContentState extends State<SignUpScreenContent> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.topCenter,
              height: 280.h,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color(0xFF6256B7),
                  Color(0xFF0A295A),
                ],
              )),
              child: Padding(
                padding: EdgeInsets.only(left: 20.sp, top: 60.sp),
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(80.r),
                          color: Colors.white,
                        ),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              size: 12.sp,
                            ))),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                      'Create New Account',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )),
        Positioned(
          top: 180,
          left: 20,
          right: 20,
          child: SizedBox(
              height: MediaQuery.of(context).size.height - 240,
              child: KeyboardVisibilityBuilder(
                  builder: (context, isKeyboardVisible) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      // mainAxisSize: MainAxisSize.min,
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
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height - 250,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 30.0, right: 30, top: 100, bottom: 40),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomTextFormField(
                                      hintText: "Enter Full Name",
                                      prefixIconPath: AppAssets.peopleSvg,
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    CustomTextFormField(
                                      hintText: "Email",
                                      prefixIconPath: AppAssets.emailSvg,
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    CustomTextFormField(
                                      hintText: "Mobile Number",
                                      prefixIconPath: AppAssets.phoneSvg,
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    CustomTextFormField(
                                      onTap: () {
                                        showCountryPicker(
                                          context: context,
                                          showPhoneCode:
                                              true, // optional. Shows phone code before the country name.
                                          onSelect: (Country country) {},
                                        );
                                      },
                                      hintText: "Select Country",
                                      prefixIconPath: AppAssets.countrySvg,
                                      suffixIconPath: AppAssets.dropDownSvg,
                                      readOnly: true,
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    CustomTextFormField(
                                      hintText: "Select City",
                                      prefixIconPath: AppAssets.citySvg,
                                      suffixIconPath: AppAssets.dropDownSvg,
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    CustomTextFormField(
                                      hintText: "Password",
                                      prefixIconPath: AppAssets.passwordSvg,
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    CustomTextFormField(
                                      hintText: "Confirm Password",
                                      prefixIconPath:
                                          AppAssets.confirmPasswordSvg,
                                      onTap: () async {
                                        await Future.delayed(
                                            const Duration(milliseconds: 500));
                                        scrollController.animateTo(
                                            scrollController
                                                .position.maxScrollExtent,
                                            duration: const Duration(
                                                milliseconds: 400),
                                            curve: Curves.easeInOut);
                                      },
                                    ),
                                    SizedBox(
                                      height: 40.h,
                                    ),
                                    AnimatedContainer(
                                        height: isKeyboardVisible ? 150 : 0,
                                        duration:
                                            const Duration(milliseconds: 400))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                        top: -80,
                        left: (MediaQuery.of(context).size.width / 2) - 60,
                        child: SvgPicture.asset(
                          AppAssets.signUpImageSvg,
                          height: 160.h,
                        )),
                    Positioned(
                      bottom: 0,
                      left: 30,
                      right: 30,
                      child: SizedBox(
                        height: 40,
                        width: 260,
                        child: ButtonsCustomWidget(
                          buttonTitle: 'Sign up',
                          buttonColor: const Color(0xFF6256B7),
                          textColor: Colors.white,
                          onPressed: () {
                            AppState appState = sl();
                            appState.goToNext(
                                PageConfigs.signInScreenPageConfig,
                                pageState: PageState.replace);
                          },
                        ),
                      ),
                    ),
                  ],
                );
              })),
        ),
      ],
    ));
  }
}
