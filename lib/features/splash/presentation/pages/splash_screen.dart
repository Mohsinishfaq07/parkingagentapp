import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sb_myreports/core/router/app_state.dart';
import '../../../../core/router/models/page_config.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/globals/globals.dart';
import '../../../../core/widgets/custom/buttons_custom_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SplashScreenContent();
  }
}

class SplashScreenContent extends StatefulWidget {
  const SplashScreenContent({Key? key}) : super(key: key);

  @override
  State<SplashScreenContent> createState() => _SplashScreenContentState();
}

class _SplashScreenContentState extends State<SplashScreenContent> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      // await Future.delayed(const Duration(seconds: 2));
      // AppState state=sl();
      // state.goToNext(PageConfigs.homeScreenPageConfig);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:  const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xFF6256B7),
            Color(0xFF0A295A),
          ],
              // stops: [0.5,1],
        )),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(height: 60.h,),
                    SvgPicture.asset(
                      AppAssets.splashCarSvg,
                      height: 400.h,

                      fit: BoxFit.cover,
                    ),

                     Padding(
                      padding: EdgeInsets.symmetric(vertical: 40.sp),
                      child: Column(
                        children:  [
                          Text(
                            'EASILY BOOK YOUR \n      RENTAL CAR',
                            style: TextStyle(color: Colors.white, fontSize: 30.sp,fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                    ),

                    ButtonsCustomWidget(
                      buttonTitle: 'Sign in',
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      onPressed: () {
                        AppState appState=sl();
                        appState.goToNext(PageConfigs.signInScreenPageConfig);


                      },
                    ),
                     SizedBox(
                      height: 26.h,
                    ),
                    ButtonsCustomWidget(
                      buttonTitle: 'Register',
                      buttonColor: const Color(0xFF0A295A),
                      textColor: Colors.white,
                      onPressed: () {
                        AppState appState = sl();
                        appState.goToNext(PageConfigs.signUpScreenPageConfig);
                      },
                      border: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0.r),
                        side:  BorderSide(color: Colors.white, width: 1.w),
                      ),
                    ),
                    SizedBox(height: 30.h,),
                  ],
                ),
              ],
            ),
          ),

      ),
    );
  }
}
