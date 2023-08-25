import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sb_myreports/core/router/app_state.dart';
import '../../../../../core/router/models/page_config.dart';
import '../../../../../core/utils/constants/app_assets.dart';
import '../../../../../core/utils/globals/globals.dart';
import '../../../../../core/widgets/custom/buttons_custom_widget.dart';
import '../../../../../core/widgets/custom/custom_form_field.dart';

class BookingDetailScreen extends StatelessWidget {
  const BookingDetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const BookingDetailScreenContent();
  }
}

class BookingDetailScreenContent extends StatefulWidget {
  const BookingDetailScreenContent({Key? key}) : super(key: key);
  @override
  State<BookingDetailScreenContent> createState() =>
      _BookingDetailScreenContentState();
}

class _BookingDetailScreenContentState
    extends State<BookingDetailScreenContent> {
  bool value1 = false;
  bool value2 = true;
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
            height: 300.h,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0xFF6256B7), Color(0xFF0A295A)],
            )),
            child: Padding(
              padding: EdgeInsets.only(left: 22.w, top: 60.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: Container(
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
                              size: 15.sp,
                            ))),
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  Text(
                    'Booking Details',
                    style: TextStyle(color: Colors.white, fontSize: 25.sp),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 220,
          left: 20,
          right: 20,
          child: Container(
            height: 520.h,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3))
            ], borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 25.0, top: 40.0, right: 25.0, bottom: 50),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'No. Plate',
                              style: TextStyle(fontSize: 12.sp),
                            ),
                            Text(
                              'Car model:',
                              style: TextStyle(fontSize: 12.sp),
                            ),
                            Text(
                              'Car owner name:',
                              style: TextStyle(fontSize: 12.sp),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'AAA123',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 12.sp),
                            ),
                            Text(
                              'Chevrolet Spark AJR-558',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 12.sp),
                            ),
                            Text(
                              'Mr.Raza',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 12.sp),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Availability',
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 160,
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(5.h),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Date',
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                                Text(
                                  '13 July - 19 July 2022',
                                  style: TextStyle(fontSize: 10.sp),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Time',
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                                Text(
                                  '8:00 am - 10:00 pm',
                                  style: TextStyle(fontSize: 10.sp),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 70,
                      width: 340,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, //color of border
                            width: 1, //width of border
                          ),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pickup Location:',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 10.sp),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Text(
                              'Plot # 8 Bahria Lifestyle. Main, Islamabad Expressway',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 8.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      width: 340,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, //color of border
                            width: 1, //width of border
                          ),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Delivery Location:',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 10.sp),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Text(
                              'Plot # 8 Bahria Lifestyle. Main, Islamabad Expressway',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 8.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextFormField(
                        hintText:
                            'Add location or other instructions (optional)*'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Summary',
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rent',
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        Text(
                          '1500.00',
                          style: TextStyle(fontSize: 10.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Vat 5%',
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        Text(
                          '1349.00',
                          style: TextStyle(fontSize: 10.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Grand Total',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12.sp),
                        ),
                        Text(
                          'PKR.2849.00',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12.sp),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 180.w,
                            child: CustomTextFormField(hintText: 'Promo Code')),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 40.h,
                            width: 82.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: const Color(0xFF11B648)),
                            child: Center(
                                child: Text(
                              'Apply Promo',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.sp),
                            )),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Wallet',
                              style: TextStyle(fontSize: 12.sp),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              '0.00',
                              style: TextStyle(fontSize: 12.sp),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  visualDensity: VisualDensity.compact,
                                  checkColor: Colors.white,
                                  side: const BorderSide(width: 0.5),
                                  activeColor: const Color(0xFF6256B7),
                                  value: value1,
                                  onChanged: (value) {
                                    setState(() {
                                      value1 = value!;
                                    });
                                  },
                                ),
                                SvgPicture.asset(AppAssets.cardSvg),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  'Cash',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  visualDensity: VisualDensity.compact,
                                  side: const BorderSide(width: 0.5),
                                  checkColor: Colors.white,
                                  activeColor: const Color(0xFF6256B7),
                                  value: value1,
                                  onChanged: (value) {
                                    setState(() {
                                      value1 = value!;
                                    });
                                  },
                                ),
                                SvgPicture.asset(AppAssets.cardSvg),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Payments',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 210.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'No Cards Found',
                            style: TextStyle(fontSize: 10),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                'Change',
                                style: TextStyle(
                                    fontSize: 10, color: Color((0xFF6256B7))),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(
                                AppAssets.timeSvg,
                                height: 8,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          left: 40,
          right: 40,
          child: ButtonsCustomWidget(
            buttonTitle: 'Booking Confirm',
            buttonColor: const Color(0xFF6256B7),
            textColor: Colors.white,
            onPressed: () {
              AppState appState = sl();
              appState
                  .goToNext(PageConfigs.confirmBookingDetailScreenPageConfig);
            },
          ),
        ),
        Positioned(
            top: 120,
            left: 30,
            right: 30,
            child: Image.asset(
              AppAssets.whiteCar,
              height: 140.h,
            ))
      ],
    ));
  }
}
