import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sb_myreports/core/utils/constants/app_assets.dart';
import '../../core/router/app_state.dart';
import '../../core/router/models/page_config.dart';
import '../../core/utils/enums/page_state_enum.dart';
import '../../core/utils/globals/globals.dart';
import '../../core/widgets/custom/buttons_custom_widget.dart';
import '../../core/widgets/custom/history_container_widget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HistoryScreenContent();
  }
}

class HistoryScreenContent extends StatefulWidget {
  const HistoryScreenContent({Key? key}) : super(key: key);
  @override
  State<HistoryScreenContent> createState() => _HistoryScreenContentState();
}

class _HistoryScreenContentState extends State<HistoryScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      // clipBehavior: Clip.none,

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
                padding: EdgeInsets.only(left: 30.w, top: 60.h, right: 30.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  size: 16.sp,
                                ))),
                        const Text(
                          'History',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              border: Border.all(color: Colors.white),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.search,
                              size: 16.sp,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 120.w,
                          child: ButtonsCustomWidget(
                            buttonTitle: 'Hire a car',
                            buttonColor: Colors.white,
                            textColor: Colors.black,
                            onPressed: () {
                              AppState appState = sl();
                              appState.goToNext(
                                  PageConfigs.hireACarScreenPageConfig,
                                  pageState: PageState.replace);
                            },
                          ),
                        ),
                        SizedBox(
                          width: 140,
                          child: ButtonsCustomWidget(
                            buttonTitle: 'Rent a car',
                            buttonColor: const Color(0xFF6256B7),
                            textColor: Colors.white,
                            onPressed: () {
                              AppState appState = sl();
                              appState.goToNext(
                                  PageConfigs.postCarDetailScreenPageConfig,
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
          left: 2,
          right: 2,
          child: ClipRect(
            // clipBehavior: Clip.hardEdge,

            child: Container(
              clipBehavior: Clip.none,
              height: MediaQuery.of(context).size.height - 140,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 3))
              ], borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 90.w,
                          child: ButtonsCustomWidget(
                            buttonTitle: 'Accepted',
                            buttonColor: Colors.white,
                            textColor: Colors.black,
                            border: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              side: const BorderSide(
                                  color: Colors.black, width: 1),
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
                            buttonColor: Colors.white,
                            textColor: Colors.black,
                            border: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              side: const BorderSide(
                                  color: Colors.black, width: 1),
                            ),
                            onPressed: () {
                              AppState appState = sl();
                              appState.goToNext(
                                  PageConfigs.rejectedScreenPageConfig,
                                  pageState: PageState.replace);
                            },
                          ),
                        ),
                        SizedBox(
                          width: 90.w,
                          child: ButtonsCustomWidget(
                            buttonTitle: 'Pending',
                            textColor: Colors.black,
                            buttonColor: Colors.white,
                            onPressed: () {
                              AppState appState = sl();
                              appState.goToNext(
                                  PageConfigs.pendingScreenPageConfig,
                                  pageState: PageState.replace);
                            },
                            border: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              side: const BorderSide(
                                  color: Colors.black, width: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: SingleChildScrollView(
                          clipBehavior: Clip.none,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              children: List.generate(
                                  6,
                                  (index) => const Column(
                                        children: [
                                          CustomHistoryContainerWidget(
                                            image: AppAssets.orangeCar,
                                            name: 'Mr.Mohsin',
                                            pickupTime: '13 july 2022',
                                            delieveryTime: '19 july 2022',
                                            firstTime: "12:12:12",
                                            secondTime: '11:11:11',
                                            from: "Sargodha",
                                            to: "islamabad",
                                            carNumber:
                                                "Chevrolet Spark AJR-558",
                                            carModel: 'Chevrolet Spark AJR-558',
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                        ],
                                      )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
