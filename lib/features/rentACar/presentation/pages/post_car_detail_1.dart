import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sb_myreports/core/utils/enums/page_state_enum.dart';
import '../../../../core/router/app_state.dart';
import '../../../../core/router/models/page_config.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/globals/globals.dart';
import '../../../../core/widgets/custom/buttons_custom_widget.dart';
import '../../../../core/widgets/custom/custom_date_time_container_widget.dart';
import '../../../../core/widgets/custom/custom_imagepicker_container.dart';

class PostACarDetail1Screen extends StatelessWidget {
  const PostACarDetail1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PostACarDetail1ScreenContent();
  }
}

class PostACarDetail1ScreenContent extends StatefulWidget {
  const PostACarDetail1ScreenContent({Key? key}) : super(key: key);

  @override
  State<PostACarDetail1ScreenContent> createState() =>
      _PostACarDetail1ScreenContentState();
}

class _PostACarDetail1ScreenContentState
    extends State<PostACarDetail1ScreenContent> {
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
            child: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.0.w),
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(30.r),
                              color: Colors.white,
                            ),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 16.sp,
                                ))),
                        SizedBox(
                          width: 60.w,
                        ),
                        Text(
                          'Rent A Car',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 170,
          left: 16,
          right: 16,
          child: Container(
            height: MediaQuery.of(context).size.height - 190,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3))
            ], borderRadius: BorderRadius.circular(20.r), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30, top: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomDateTimeContainerWidget(
                        text: 'Pick-up-date',
                        icon: AppAssets.calenderSvg,
                      ),
                      CustomDateTimeContainerWidget(
                        text: 'Return',
                        icon: AppAssets.calenderSvg,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomDateTimeContainerWidget(
                        text: 'Start',
                        icon: AppAssets.timeSvg,
                      ),
                      CustomDateTimeContainerWidget(
                        text: 'End',
                        icon: AppAssets.timeSvg,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const CustomImagePickerContainer(
                            text: 'Add Your Car Image',
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.h),
                            child: const CustomImagePickerContainer(
                              text: 'CNIC Back side Image \n       (Required)',
                            ),
                          ),
                          const CustomImagePickerContainer(
                            text: 'CNIC Back  side Back \n       (Required)',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 40,
          right: 40,
          child: ButtonsCustomWidget(
            buttonTitle: 'Next',
            buttonColor: const Color(0xFF6256B7),
            textColor: Colors.white,
            onPressed: () {
              AppState appState = sl();
              appState.goToNext(PageConfigs.homeScreenPageConfig,
                  pageState: PageState.replace);
            },
          ),
        ),
        Positioned(
            top: 90,
            left: 10,
            right: 90,
            child: SizedBox(
              height: 130,
              width: 90,
              child: SvgPicture.asset(
                AppAssets.postCarDetailSvg,
                height: 60,
              ),
            )),
      ],
    ));
  }
}
