import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sb_myreports/core/widgets/custom/custom_otp_fields.dart';

import '../../../../../core/router/app_state.dart';
import '../../../../../core/router/models/page_config.dart';
import '../../../../../core/utils/constants/app_assets.dart';
import '../../../../../core/utils/globals/globals.dart';
import '../../../../../core/widgets/custom/buttons_custom_widget.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const OtpScreenContent();
  }
}

class OtpScreenContent extends StatefulWidget {
  const OtpScreenContent({Key? key}) : super(key: key);

  @override
  State<OtpScreenContent> createState() => _OtpScreenContentState();
}

class _OtpScreenContentState extends State<OtpScreenContent> {
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
              alignment: Alignment.topCenter,
              height: 300,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.indigo,
                  Colors.indigo,
                  Color(0xFF0A295A),
                ],
              )),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(100.r),
                            color: Colors.white,
                          ),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back,
                                size: 20,
                              ))),
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        'Verify Your Mobile',
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),
                    ],
                  ),
                ),
              ),
            )),
        Positioned(
          top: 230,
          left: 24,
          child: Container(
            height: 260,
            width: 360,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3))
            ], borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 80.0, left: 15.0, right: 15.0),
              child: Column(
                children: [
                  const Text(
                    'A verification code has been sent to \n   +92300 1234567, enter is below.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: CustomOtpFields(
                      // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                      onChanged: (String) {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 466,
          left: 50,
          right: 50,
          child: Column(
            children: [
              ButtonsCustomWidget(
                buttonTitle: 'Verify Code',
                buttonColor: const Color(0xFF6256B7),
                textColor: Colors.white,
                onPressed: () {
                  AppState appState = sl();
                  appState.goToNext(PageConfigs.homeScreenPageConfig);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't receive SMS?",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    " Resend Code",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
            top: 120,
            left: 100,
            child: SvgPicture.asset(
              AppAssets.otpScreenSvg,
              height: 140,
            )),
      ],
    ));
  }
}
