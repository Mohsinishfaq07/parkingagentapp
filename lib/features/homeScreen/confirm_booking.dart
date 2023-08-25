import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sb_myreports/core/utils/constants/app_assets.dart';
import '../../core/widgets/custom/buttons_custom_widget.dart';
class ConfirmBookingDetailSecondScreen extends StatelessWidget {
  const ConfirmBookingDetailSecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ConfirmBookingDetailSecondScreenContent();
  }
}
class ConfirmBookingDetailSecondScreenContent extends StatefulWidget {
  const ConfirmBookingDetailSecondScreenContent({Key? key}) : super(key: key);
  @override
  State<ConfirmBookingDetailSecondScreenContent> createState() =>
      _BookingDetailSecondScreenContentState();
}
class _BookingDetailSecondScreenContentState
    extends State<ConfirmBookingDetailSecondScreenContent> {
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
              height: 260.h,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF6256B7), Color(0xFF0A295A)],
                  )),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 22.w,top: 60.h
                ),
                child: Row(crossAxisAlignment: CrossAxisAlignment.start,
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
            top: 230.h,
            left: 20.w,
            right: 20.w,
            child: SizedBox(
              child: Stack(
                children: [
                  Container(
                    height:545.h,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3))
                    ], borderRadius: BorderRadius.circular(20), color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 25.w, right: 25.w, top: 60.h, bottom: 130.h),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Car Information',
                              style: TextStyle(fontSize: 12.sp),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'No. Plate',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      'Car model:',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      'Car owner name:',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 57.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    Text(
                                      'AAA123:',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      'Chevrolet Spark AJR-558',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      'Mr.Raza',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Text(
                              'Booking Information',
                              style: TextStyle(fontSize: 12.sp),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Name:',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      'Mobile no.',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      'Email:',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      'City',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      'Pickup time:',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      'Delivery time:',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      'Pickup & Drop off time:',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      'Location From To:',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 22.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    Text(
                                      'Mr AHmed',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      '+92 336 1111111',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      'ahmad291@gmail.com',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      'Islamabad',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      '13 July 2022',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      '19 July 2022',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      '8:0 am - 10.00 pm',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Text(
                                      'Islamabad',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Text(
                              'Summary',
                              style: TextStyle(fontSize: 12.sp),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  [
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
                              height: 5.h,
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
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Grand Total',
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                                Text(
                                  'PKR.2849.00',
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 1.h,
            left: 50.w,
            right: 50.w,
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                  child: ButtonsCustomWidget(
                    buttonTitle: 'Ok',
                    buttonColor: const Color(0xFF6256B7),
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    height: 40.h,
                    child: ButtonsCustomWidget(
                      buttonTitle: 'Cancel',
                      buttonColor: const Color(0xFFDB4437),
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF11B648),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r))),
                    onPressed: () {},
                    icon: const Icon(Icons.phone),
                    label: const Text('Call Directory'),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
          Positioned(
              top: 145.h,
              left: 20.w,
              right: 20.w,
              child: Image.asset(AppAssets.whiteCar,height: 140.h,)),
        ],
      ),
    );
  }
}