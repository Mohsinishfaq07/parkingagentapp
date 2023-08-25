import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sb_myreports/core/utils/enums/page_state_enum.dart';
import '../../core/router/app_state.dart';
import '../../core/router/models/page_config.dart';
import '../../core/utils/globals/globals.dart';
import '../../core/widgets/custom/accepted_custom_widget.dart';
import '../../core/widgets/custom/buttons_custom_widget.dart';

class PendingScreen extends StatelessWidget {
  const PendingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PendingScreenContent();
  }
}

class PendingScreenContent extends StatefulWidget {
  const PendingScreenContent({Key? key}) : super(key: key);
  @override
  State<PendingScreenContent> createState() => _PendingScreenContentState();
}

class _PendingScreenContentState extends State<PendingScreenContent> {
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
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color(0xFF6256B7),
                  Color(0xFF0A295A),
                ],
              )),
              height: 280.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 60.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(100.r),
                              color: Colors.white,
                            ),
                            child: GestureDetector(
                                onTap: () {
                                  AppState appState = sl();
                                  appState.moveToBackScreen();
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 14.h,
                                ))),
                        SizedBox(
                          width: 90.w,
                        ),
                        Text(
                          'Pending',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 90.w,
                          child: ButtonsCustomWidget(
                            buttonTitle: 'Accepted',
                            buttonColor: Colors.transparent,
                            textColor: Colors.white,
                            border: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: const BorderSide(
                                  color: Colors.white, width: 1),
                            ),
                            onPressed: () {
                              AppState appState = sl();
                              appState.goToNext(
                                  PageConfigs.acceptedScreenPageConfig,
                                  pageState: PageState.replace);
                            },
                          ),
                        ),
                        SizedBox(
                          width: 90.w,
                          child: ButtonsCustomWidget(
                            buttonTitle: 'Rejected',
                            buttonColor: Colors.transparent,
                            textColor: Colors.white,
                            border: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: const BorderSide(
                                  color: Colors.white, width: 1),
                            ),
                            onPressed: () {
                              AppState appState = sl();
                              appState.goToNext(
                                PageConfigs.rejectedScreenPageConfig,
                                pageState: PageState.replace,
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 90.w,
                          child: ButtonsCustomWidget(
                            buttonTitle: 'Pending',
                            buttonColor: Colors.white,
                            textColor: Colors.black,
                            border: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            onPressed: () {
                              AppState appState = sl();
                              appState.goToNext(
                                  PageConfigs.pendingScreenPageConfig,
                                  pageState: PageState.replace);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ),
        Positioned(
          top: 220,
          left: 20,
          right: 20,
          child: Container(
            height: MediaQuery.of(context).size.height - 190,
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 3))
            ], borderRadius: BorderRadius.circular(10.r), color: Colors.white),
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  5,
                  (index) => Stack(
                    children: [
                      Column(
                        children: [
                          const AcceptedCustomWidget(
                            // icon: Icons.car_crash,
                            name: 'Mr.Raza',
                            locationOne: 'Islamabad:',
                            dateOne: '13 July 2022 - 8:00 am',
                            locationTwo: 'Lahore:',
                            dateTwo: '19 July 2022 - 10:00 pm',
                            no: 'No.Plate:',
                            noText: 'AAA123',
                            model: 'Car model:',
                            modelText: 'Chevrolet Spark AJR-558',
                          ),
                          SizedBox(height: 30.h),
                        ],
                      ),
                      Positioned(
                          bottom: 2,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 26.w),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width - 130,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: const Offset(0, 3),
                                      ),
                                    ]),
                                    width: 110.w,
                                    child: ButtonsCustomWidget(
                                      buttonTitle: 'Accept',
                                      buttonColor: Colors.white,
                                      textColor: Colors.black,
                                      border: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0.r),
                                        side: BorderSide(
                                            color: Colors.white, width: 1.w),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: const Offset(0, 3),
                                      ),
                                    ]),
                                    width: 110.w,
                                    child: ButtonsCustomWidget(
                                      buttonTitle: 'Reject',
                                      buttonColor: const Color(0xFF6256B7),
                                      textColor: Colors.white,
                                      border: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        side: BorderSide(
                                            color: const Color(0xFF6256B7),
                                            width: 1.w),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
