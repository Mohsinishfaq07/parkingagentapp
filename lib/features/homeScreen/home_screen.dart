import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sb_myreports/core/utils/constants/app_assets.dart';
import 'package:sb_myreports/core/utils/enums/page_state_enum.dart';
import '../../core/router/app_state.dart';
import '../../core/router/models/page_config.dart';
import '../../core/utils/globals/globals.dart';
import '../../core/widgets/custom/buttons_custom_widget.dart';
import '../../core/widgets/custom/custom_car_detail_container.dart';
import '../../core/widgets/custom/search_bar_custom_widget.dart';
import 'drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeScreenContent();
  }
}

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({Key? key}) : super(key: key);

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        body: Column(
          children: [
            Container(
              height: 240,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color(0xFF6256B7),
                  Color(0xFF0A295A),
                ],
              )),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            scaffoldKey.currentState!.openDrawer();
                          },
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 22.sp,
                          ),
                        ),
                        Text(
                          "Select Your Car",
                          style: TextStyle(
                            fontSize: 22.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            AppState appState = sl();
                            appState.goToNext(
                                PageConfigs.historyScreenPageConfig,
                                pageState: PageState.replace);
                          },
                          child: Icon(
                            Icons.history,
                            color: Colors.white,
                            size: 24.sp,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SearchBarCustomWidget(
                      hintText: 'Search Your Car',
                      suffixIcon: Icons.search,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 30, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 134.w,
                    child: ButtonsCustomWidget(
                      buttonTitle: 'Hire a car',
                      buttonColor: const Color(0xFF6256B7),
                      textColor: Colors.white,
                      border: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      onPressed: () {
                        AppState appState = sl();
                        appState.goToNext(PageConfigs.hireACarScreenPageConfig,
                            pageState: PageState.replace);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 134.w,
                    child: ButtonsCustomWidget(
                      buttonTitle: 'Rent a car',
                      textColor: Colors.black,
                      buttonColor: Colors.white,
                      onPressed: () {
                        AppState appState = sl();
                        appState.goToNext(
                            PageConfigs.postCarDetailScreenPageConfig,
                            pageState: PageState.replace);
                      },
                      border: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Colors.black, width: 1.h),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                      children: List.generate(
                    5,
                    (index) => Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            AppState appState = sl();
                            appState.goToNext(
                                PageConfigs.carDetailsScreenPageConfig,
                                pageState: PageState.replace);
                          },
                          child:  const CustomCarDetailCardWidget(
                            title: 'Audi q3', carImage: AppAssets.orangeCar,

                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
          ],
        ));
  }
}
