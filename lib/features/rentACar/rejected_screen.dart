import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sb_myreports/core/utils/constants/app_assets.dart';
import '../../core/router/app_state.dart';
import '../../core/router/models/page_config.dart';
import '../../core/utils/enums/page_state_enum.dart';
import '../../core/utils/globals/globals.dart';
import '../../core/widgets/custom/accepted_custom_widget.dart';
import '../../core/widgets/custom/buttons_custom_widget.dart';

class RejectedScreen extends StatelessWidget {
  const RejectedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const RejectedScreenContent();
  }
}

class RejectedScreenContent extends StatefulWidget {
  const RejectedScreenContent({Key? key}) : super(key: key);
  @override
  State<RejectedScreenContent> createState() => _RejectedScreenContentState();
}

class _RejectedScreenContentState extends State<RejectedScreenContent> {
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
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 14.sp,
                                ))),
                        SizedBox(
                          width: 90.w,
                        ),
                        Text(
                          'Rejected',
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
                            textColor: Colors.white,
                            buttonColor: Colors.transparent,
                            onPressed: () {
                              AppState appState = sl();
                              appState.goToNext(
                                PageConfigs.acceptedScreenPageConfig,
                                pageState: PageState.replace,
                              );
                            },
                            border: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: const BorderSide(
                                  color: Colors.white, width: 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 90.w,
                          child: ButtonsCustomWidget(
                            buttonTitle: 'Rejected',
                            buttonColor: Colors.white,
                            textColor: Colors.black,
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
                            textColor: Colors.white,
                            buttonColor: Colors.transparent,
                            onPressed: () {
                              AppState appState = sl();
                              appState.goToNext(
                                PageConfigs.pendingScreenPageConfig,
                                pageState: PageState.replace,
                              );
                            },
                            border: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: const BorderSide(
                                  color: Colors.white, width: 1),
                            ),
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
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 4))
            ], borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Column(
                    children: List.generate(
                  5,
                  (index) => const Column(
                    children: [
                      AcceptedCustomWidget(
                        name: 'Mr.Raza',
                        image: AppAssets.deleteSvg,
                        locationOne: 'Islamabad:',
                        dateOne: '13 July 2022 - 8:00 am',
                        locationTwo: 'Lahore:',
                        dateTwo: '19 July 2022 - 10:00 pm',
                        no: 'No.Plate:',
                        noText: 'AAA123',
                        model: 'Car model:',
                        modelText: 'Chevrolet Spark AJR-558',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
