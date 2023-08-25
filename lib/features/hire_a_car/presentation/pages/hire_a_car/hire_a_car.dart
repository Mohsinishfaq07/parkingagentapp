import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/router/app_state.dart';
import '../../../../../core/router/models/page_config.dart';
import '../../../../../core/utils/constants/app_assets.dart';
import '../../../../../core/utils/enums/page_state_enum.dart';
import '../../../../../core/utils/globals/globals.dart';
import '../../../../../core/widgets/custom/buttons_custom_widget.dart';

class HireACarScreen extends StatelessWidget {
  const HireACarScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const HireACarScreenContent();
  }
}
class HireACarScreenContent extends StatefulWidget {
  const HireACarScreenContent({Key? key}) : super(key: key);
  @override
  State<HireACarScreenContent> createState() => _HireACarScreenContentState();
}
class _HireACarScreenContentState extends State<HireACarScreenContent> {
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
                height: 370.h,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.indigo,
                        Colors.indigo,
                        Color(0xFF0A295A),
                      ],
                    )),
                child: Image.asset(
                  AppAssets.mapImage,
                  height: 100.h,
                ),
              ),
            ),
            Positioned(
              top: 390.h,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, right: 20.w),
                        child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3))
                              ],
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.white),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 25.w, right: 25.w, top: 60.h),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 45.h,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black, //color of border
                                          width: 1, //width of border
                                        ),
                                        borderRadius: BorderRadius.circular(5.r),
                                        color: Colors.white),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children:  [
                                          Text(
                                            'Pickup Location',
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 12.sp),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.red,
                                            size: 10.sp,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Container(
                                    height: 45.h,
                                    width: 325.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black, //color of border
                                          width: 1.w, //width of border
                                        ),
                                        borderRadius: BorderRadius.circular(5.r),
                                        color: Colors.white),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Delivery Location',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12.sp),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 130.w,
                                        height: 80.h,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black, //color of border
                                              width: 1, //width of border
                                            ),
                                            borderRadius: BorderRadius.circular(5.r),
                                            color: Colors.white),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 10.h, left: 10.0.w, right: 25.w),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  SvgPicture.asset(AppAssets.timeSvg),
                                                  Text(
                                                    'Select Time',
                                                    style: TextStyle(fontSize: 11.sp),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  SvgPicture.asset(
                                                      AppAssets.calenderSvg),
                                                  Text(
                                                    'Select Date',
                                                    style: TextStyle(fontSize: 11.sp),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'PKR. 12000',
                                            style: TextStyle(
                                                color: const Color(0xFF6256B7),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.sp),
                                          ),
                                          Text(
                                            'Rental Time: 7 weeks',
                                            style: TextStyle(
                                                color: const Color(0xFF6256B7),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10.sp),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 190.h),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      )
                    ],
                  ),
                  Positioned(
                    bottom: -10.h,
                    left: 40.w,
                    right: 40.w,
                    child: ButtonsCustomWidget(
                      buttonTitle: 'Book Your Car',
                      buttonColor: const Color(0xFF6256B7),
                      textColor: Colors.white,
                      onPressed: () {
                        AppState appState = sl();
                        appState.goToNext(PageConfigs.bookingDetailScreenPageConfig,
                            pageState: PageState.replace);
                      },
                    ),
                  ),
                  Positioned(
                      bottom: 370.h,
                      child: SizedBox(
                        height: 100.h,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 100.h,
                              width: 360.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: const Color(0xFF6256B7),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 20.w, right: 20.w, top: 20.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children:  [
                                        Text(
                                          'Chevrolet Spark',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 12.sp),
                                        ),
                                        SizedBox(
                                          height: 6.h,
                                        ),
                                        Text(
                                          'AJR-558',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 12.sp),
                                          textAlign: TextAlign.end,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,

                              child: Image.asset(
                                AppAssets.whiteCar,
                                height: 140.h,
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ],
        ));
  }
}