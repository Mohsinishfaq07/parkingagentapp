import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sb_myreports/core/utils/constants/app_assets.dart';
import 'package:sb_myreports/core/widgets/custom/custom_feature_check.dart';
import 'package:sb_myreports/core/widgets/custom/custom_form_field.dart';
import '../../../../core/router/app_state.dart';
import '../../../../core/router/models/page_config.dart';
import '../../../../core/utils/globals/globals.dart';
import '../../../../core/widgets/custom/buttons_custom_widget.dart';

class PostCarDetail extends StatelessWidget {
  const PostCarDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PostCarDetailContent();
  }
}

class PostCarDetailContent extends StatefulWidget {
  const PostCarDetailContent({Key? key}) : super(key: key);

  @override
  State<PostCarDetailContent> createState() => _PostCarDetailContentState();
}

class _PostCarDetailContentState extends State<PostCarDetailContent> {
  bool valueFirst = false;
  bool valueSecond = false;
  bool valueThird = false;
  bool valueFourth = false;
  bool valueFifth = false;
  bool valueSixth = false;
  bool valueSeventh = false;
  bool valueEight = false;
  bool valueNine = false;
  bool _switchValue = true;
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
                    padding:  EdgeInsets.only(left: 30.0.w),
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
                          'Car Details',
                          style: TextStyle(color: Colors.white, fontSize: 24.sp,fontWeight: FontWeight.bold),
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
            ], borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, top: 60),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextFormField(
                    hintText: "User Name",
                    prefixIconPath: AppAssets.peopleSvg,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 24.h, bottom: 24.h),
                    child: CustomTextFormField(
                      prefixIconPath: AppAssets.buildingsSvg,
                      hintText: "Company",
                      suffixIconPath: AppAssets.dropDownSvg,
                    ),
                  ),
                  CustomTextFormField(
                    prefixIconPath: AppAssets.carModelSvg,
                    hintText: "Model",
                    suffixIconPath: AppAssets.dropDownSvg,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 24),
                    child: CustomTextFormField(
                      readOnly: true,
                      prefixIconPath: AppAssets.carColorSvg,
                      hintText: "Colour",
                      suffixIconPath: AppAssets.dropDownSvg,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Align(
                              alignment: Alignment.topLeft,
                              child: Text('Features')),
                          SizedBox(height: 20.h,),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomFeatureCheck(
                                    value: valueFirst,
                                    text: "Seating Capacity",
                                    onChange: (value) {
                                      setState(() {
                                        valueFirst = value!;
                                      });
                                    },
                                  ),
                                  const SizedBox(height: 10,),
                                  CustomFeatureCheck(
                                    value: valueThird,
                                    text: "Ac",
                                    onChange: (value) {
                                      setState(() {
                                        valueThird = value!;
                                      });
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                                    child: CustomFeatureCheck(
                                      value: valueThird,
                                      text: "heater",
                                      onChange: (value) {
                                        setState(() {
                                          valueThird = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  CustomFeatureCheck(
                                    value: valueFifth,
                                    text: "With driver",
                                    onChange: (value) {
                                      setState(() {
                                        valueFifth= value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomFeatureCheck(
                                    value: valueSecond,
                                    text: "Auto",
                                    onChange: (value) {
                                      setState(() {
                                        valueSecond = value!;
                                      });
                                    },
                                  ),
                                  const SizedBox(height: 10,),
                                  CustomFeatureCheck(
                                    value: valueFourth,
                                    text: "Manual",
                                    onChange: (value) {
                                      setState(() {
                                        valueFourth = value!;
                                      });
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                                    child: CustomFeatureCheck(
                                      value: valueSixth,
                                      text: "Bag",
                                      onChange: (value) {
                                        setState(() {
                                          valueSixth = value!;
                                        });
                                      },
                                    ),
                                  ),


                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomFeatureCheck(
                                        value: valueEight,
                                        text: "Self drive",
                                        onChange: (value) {
                                          setState(() {
                                            valueEight = value!;
                                          });
                                        },
                                      ),
                                      SizedBox(

                                        child:  CustomFeatureCheck(
                                          value: valueNine,
                                          text: "Both",
                                          onChange: (value) {
                                            setState(() {
                                              valueNine = value!;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding:  EdgeInsets.only(top:14.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Text('Car Availability',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.sp),),
                                Transform.scale(
                                  scale: 0.8,
                                  child: CupertinoSwitch(
                                    value: _switchValue,
                                    onChanged: (value) {
                                      setState(() {
                                        _switchValue = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
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
            buttonTitle: 'Submit',
            buttonColor: const Color(0xFF6256B7),
            textColor: Colors.white,
            onPressed: () {
              AppState appState = sl();
              appState.goToNext(PageConfigs.postCarDetail1ScreenPageConfig);
            },
          ),
        ),
        Positioned(
            top: 90,
            left: 10,
            right: 80,
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
